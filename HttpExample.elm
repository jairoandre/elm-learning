module HttpExample exposing (..)

import Html exposing (Html, Attribute, img, span, div, h2, button, text, input)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)
import Http
import Json.Decode as Json
import Task
import Time exposing (Time, second)


main =
    App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { topic : String
    , gifUrl : String
    , loading : Bool
    , delay : Int
    , topicChanged : Bool
    }


init : ( Model, Cmd Msg )
init =
    ( Model "cats" "http://i.giphy.com/mv1YxAXfJqMdW.gif" False 0 False, Cmd.none )



-- UPDATE


type Msg
    = MorePlease
    | ChangeTopic String
    | Tick Time
    | FetchSucceed String
    | FetchFail Http.Error


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        MorePlease ->
            ( { model | loading = True }, getRandomGif model.topic )

        FetchSucceed newUrl ->
            ( { model | loading = False, gifUrl = newUrl }, Cmd.none )

        FetchFail _ ->
            ( { model | loading = False, gifUrl = "http://i.giphy.com/mv1YxAXfJqMdW.gif" }, Cmd.none )

        ChangeTopic topic ->
            ( { model
                | topic = topic
                , delay = 2
                , topicChanged = True
              }
            , Cmd.none
            )

        Tick newTime ->
            if model.topicChanged then
                if model.delay == 0 then
                    ( { model | loading = True, topicChanged = False }, getRandomGif model.topic )
                else
                    ( { model | delay = model.delay - 1 }, Cmd.none )
            else
                ( model, Cmd.none )


getRandomGif : String -> Cmd Msg
getRandomGif topic =
    let
        url =
            "https://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=" ++ topic
    in
        Task.perform FetchFail FetchSucceed (Http.get decodeGifUrl url)


decodeGifUrl : Json.Decoder String
decodeGifUrl =
    Json.at [ "data", "image_url" ] Json.string



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Time.every second Tick



-- VIEW


view : Model -> Html Msg
view model =
    let
        loadingMsg =
            if model.loading then
                " (Loading...)"
            else
                ""
    in
        div [ style [ ( "margin", "20px" ) ] ]
            [ h2 [] [ text (model.topic ++ loadingMsg) ]
            , div []
                [ input [ onInput ChangeTopic ] []
                ]
            , div [] []
            , img [ src model.gifUrl ] []
            , div [] []
            , button [ onClick MorePlease ] [ text "More Please!" ]
            ]
