module Main exposing (..)

import Html exposing (Html, div)
import Html.App as App
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Time exposing (Time, second)
import Clock


main =
    App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type alias Model =
    Time


type alias StrCoords =
    ( String, String )


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )


type Msg
    = Tick Time


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick newTime ->
            ( newTime, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Time.every second Tick


calcHandys : Model -> (Time -> Float) -> StrCoords
calcHandys model timeFunc =
    let
        angle =
            turns (timeFunc model) - (pi / 2)

        handX =
            toString (50 + 40 * cos angle)

        handY =
            toString (50 + 40 * sin angle)
    in
        ( handX, handY )


view : Model -> Html Msg
view model =
    let
        ( secondHandX, secondHandY ) =
            calcHandys model Time.inMinutes

        ( minuteHandX, minuteHandY ) =
            calcHandys model Time.inHours
    in
        div []
            [ Clock.clock secondHandX secondHandY minuteHandX minuteHandY
            ]
