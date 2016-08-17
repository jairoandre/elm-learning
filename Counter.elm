module Counter exposing (Model, Msg, init, update, view)

import Html exposing (..)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)

-- MODEL

type alias Model =
    { count: Int
    , maxReach: Int
    , minReach: Int
    , clicks: Int
    }

init : Int -> Model
init count =
    Model count 0 0 0

-- UPDATE

type Msg
    = Increment
    | Decrement

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            let
                maxReach =
                    if model.count == model.maxReach then
                        model.count + 1
                    else
                        model.maxReach
            in
                { model | count = model.count + 1, maxReach = maxReach, clicks = model.clicks + 1 }

        Decrement ->
            let
                minReach =
                    if model.count == model.minReach then
                        model.count - 1
                    else
                        model.minReach
            in
                { model | count = model.count - 1, minReach = minReach, clicks = model.clicks + 1 }


-- VIEW

view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [ countStyle ] [ text (toString model.count) ]
        , button [ onClick Increment ] [ text "+" ]
        , div [ countStyle ]
            [ div [ labelStyle ] [ text "MAX: "]
            , div [] [ text <| toString <| model.maxReach ]
            , div [ labelStyle ] [ text " MIN: "]
            , div [] [ text <| toString <| model.minReach ]
            , div [ labelStyle ] [ text " CLICKS: "]
            , div [] [ text <| toString <| model.clicks ]
            ]
        ]

countStyle : Attribute msg
countStyle =
    style 
        [ ("font-size", "20px")
        , ("font-family", "monospace")
        , ("display", "inline-block")
        , ("width", "50px")
        , ("text-align", "center")
        ]

labelStyle : Attribute msg
labelStyle =
    style
        [ ("font-weight", "bold")
        ]