module HttpExample exposing (..)

import Html exposing (Html, Attribute, img, span, div, h2, button, text)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Http
import Json.Decode as Json
import Task


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
    }


init : ( Model, Cmd Msg )
init =
    ( Model "cats" "waiting.gif" False, Cmd.none )



-- UPDATE


type Msg
    = MorePlease
    | FetchSucceed String
    | FetchFail Http.Error


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        MorePlease ->
            ( { model | loading = True }, getRandomGif model.topic )

        FetchSucceed newUrl ->
            ( Model model.topic newUrl False, Cmd.none )

        FetchFail _ ->
            ( { model | loading = False }, Cmd.none )


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
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    let
        loadingMsg =
            if model.loading then
                "Loading..."
            else
                ""
    in
        div []
            [ h2 [] [ text model.topic ]
            , span [] [ text loadingMsg ]
            , img [ src model.gifUrl ] []
            , button [ onClick MorePlease ] [ text "More Please!" ]
            ]
