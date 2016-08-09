module Main exposing (..)

import Html exposing (Html, Attribute, div, h1, button, text, img)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Random


main =
    App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { dieFace : ( Int, Int )
    }


init : ( Model, Cmd Msg )
init =
    ( Model ( 1, 1 ), Cmd.none )



-- UPDATE


type Msg
    = Roll
    | NewFace ( Int, Int )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Roll ->
            ( model, Random.generate NewFace (Random.pair (Random.int 1 6) (Random.int 1 6)) )

        NewFace newFaces ->
            ( Model newFaces, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    let
        ( dice1, dice2 ) =
            model.dieFace
    in
        div [ style [ ( "margin", "20px" ) ] ]
            [ h1 [] [ text "Dices: " ]
            , img [ src ("http://www.speedymath.com/images/dice/" ++ (toString dice1) ++ "-border-red.gif") ] []
            , img [ src ("http://www.speedymath.com/images/dice/" ++ (toString dice2) ++ "-border-red.gif") ] []
            , div [] []
            , button [ onClick Roll ] [ text "Roll" ]
            ]
