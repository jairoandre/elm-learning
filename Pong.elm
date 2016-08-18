import Html exposing (..)
import Html.App as App
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Random

main =
    App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }

-- MODEL

gameWidth
    = 1920.0
gameHeight
    = 1080.0
paddleWidth
    = 60.0
paddleHeight
    = 240.0
paddleSpeed
    = 16.0
ballWidth
    = 60.0
ballHeight
    = 60.0
ballSpeedStart
    = 16.0
ballSpeed
    = ballSpeedStart
scoreMax
    = 5

type alias Model =
    { ball : Ball
    , player : Paddle
    , cpu : Paddle
    , playerScore : Int
    , cpuScore : Int
    , maxScore : Int
    }

type alias Paddle =
    { x : Float
    , y : Float
    , w : Float
    , h : Float
    , s : Float
    , u : Bool
    , d : Bool
    }

type alias Ball =
    { x : Float
    , y : Float
    , w : Float
    , h : Float
    , vx : Float
    , vy : Float
    }

init : (Model, Cmd Msg)
init =
    (Model
        (Ball ((gameWidth / 2) - (ballWidth / 2)) ((gameWidth / 2) - (ballWidth / 2)) ballSpeed ballSpeed ballWidth ballHeight)
        (Paddle 0.0 ((gameHeight / 2) - (paddleHeight / 2)) paddleWidth paddleHeight paddleSpeed False False)
        (Paddle (gameWidth - paddleWidth) ((gameHeight / 2) - (paddleHeight / 2)) paddleWidth paddleHeight paddleSpeed False False)
        0
        0
        5, Cmd.none)

-- UPDATE

type Msg
    = UpdateBall

update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        UpdateBall ->
            ( model, Cmd.none )

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

-- VIEW

view : Model -> Html Msg
view model =
    div [ style [ ("background", "radial-gradient(#222,#111)"), ("width", "100%"), ("height", "100%") ] ]
    [ div [ style pong ]
        [ div [ id "player", style <| paddle_player <| model.player ] []
        , div [ id "cpu", style <| paddle_enemy <| model.cpu ] []
        , div [ style score_player ] [ text <| toString <| model.playerScore ]
        , div [ style score_enemy ] [ text <| toString <| model.cpuScore ]
        , div [ style net ] []
        , div [ style ball ] []
        ]
    ]

pong : List (String, String)
pong =
    [ ("position", "absolute")
    , ("width", "1920px")
    , ("height", "1080px")
    , ("left", "0")
    , ("right", "0")
    , ("top", "0")
    , ("bottom", "0")
    , ("margin", "auto")
    , ("box-shadow", "0 0 0 8px #666")
    , ("transform", "scale(0.7)")
    ]

paddle : List (String, String)
paddle =
    [ ("width", "60px")
    , ("height", "240px")
    , ("position", "absolute")
    ]

score : List (String, String)
score =
    [ ("font", "bold 6em/1 'Robot Mono', monospace")
    , ("top", "80px")
    , ("position", "absolute")
    ]

paddle_player : Paddle -> List (String, String)
paddle_player p =
    paddle ++
    [ ("background", "hsl(130, 100%, 60%)")
    , ("top", (toString p.y) ++ "px")
    , ("left", (toString p.x) ++ "px")
    ]

paddle_enemy : Paddle -> List (String, String)
paddle_enemy p =
    paddle ++
    [ ("background", "hsl(200, 100%, 60%)")
    , ("top", (toString p.y) ++ "px")
    , ("left", (toString p.x) ++ "px")
    ]

score_player : List (String, String)
score_player =
    score ++
    [ ("color", "hsl(130, 100%, 60%)")
    , ("left", "180px")
    ]

score_enemy : List (String, String)
score_enemy =
    score ++
    [ ("color", "hsl(200, 100%, 60%)")
    , ("right", "180px")
    ]

net : List (String, String)
net =
    [ ("position", "absolute")
    , ("background", "#666")
    , ("width", "4px")
    , ("height", "100%")
    , ("left", "50%")
    , ("top", "0")
    , ("margin", "left -2px")
    ]

ball : List (String, String)
ball =
    [ ("position", "absolute")
    , ("background", "#fff")
    , ("width", "60px")
    , ("height", "60px")
    , ("left", "0")
    , ("top", "0")
    ]
