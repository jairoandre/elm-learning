module Main exposing (..)

import Html exposing (Html, div)
import Html.App as App
import Svg exposing (..)
import Svg.Attributes exposing (..)
import Time exposing (Time, second)


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
            [ svg [ viewBox "0 0 100 100", width "300px" ]
                [ circle [ cx "50", cy "50", r "45", fill "#0b79ce" ] []
                , text' [ x "48", y "18", fill "#FFFFFF", fontSize "10" ] [ text "1" ]
                , line [ x1 "50", y1 "50", x2 secondHandX, y2 secondHandY, stroke "#023963" ] []
                , line [ x1 "50", y1 "50", x2 minuteHandX, y2 minuteHandY, stroke "red" ] []
                ]
            , div [] [ text (toString <| model) ]
            ]
