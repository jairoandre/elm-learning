import Html exposing (..)
import Html.App as App
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Time exposing (Time)
import AnimationFrame exposing (times)
import Keyboard exposing (KeyCode)

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
    = 8
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
        (Ball ((gameWidth / 2) - (ballWidth / 2)) ((gameHeight / 2) - (ballWidth / 2)) ballWidth ballHeight ballSpeed ballSpeed)
        (Paddle 0.0 ((gameHeight / 2) - (paddleHeight / 2)) paddleWidth paddleHeight paddleSpeed False False)
        (Paddle (gameWidth - paddleWidth) ((gameHeight / 2) - (paddleHeight / 2)) paddleWidth paddleHeight paddleSpeed False False)
        0
        0
        5, Cmd.none)

-- UPDATE

type Msg
    = UpdateBall
    | Loop Time

update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        UpdateBall ->
            ( model, Cmd.none )
        Loop newTime ->
            ({ model | ball = (updateBall model.ball) }, Cmd.none)

newCoord : Float -> Float -> Float -> Float -> Float
newCoord coord offSet limit velocity =
    if coord < 0 then
        0
    else
        if (coord + offSet) > limit then
            limit - offSet
        else
            coord + velocity

newVelocity : Float -> Float -> Float -> Float -> Float
newVelocity coord offSet limit velocity =
    if coord < 0 then
        velocity * -1
    else
        if (coord + offSet) > limit then
            velocity * -1
        else
            velocity

updateBall : Ball -> Ball
updateBall ball =
    { ball
        | x = newCoord ball.x ball.w gameWidth ball.vx
        , y = newCoord ball.y ball.h gameHeight ball.vy
        , vx = newVelocity ball.x ball.w gameWidth ball.vx
        , vy = newVelocity ball.y ball.h gameHeight ball.vy
    }

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model
    = times Loop

-- VIEW

view : Model -> Html Msg
view model =
    div [ style mainWrapStyle ]
        [ div [ style sliderWrapStyle ]
              [ div [ style sliderStyle ] [ board model ] ]
        , div [ style [("color", "#fff")] ] [ text ("ball x: " ++ (toString model.ball.x)) ]
        , div [ style [("color", "#fff")] ] [ text ("ball y: " ++ (toString model.ball.y)) ]
        , div [ style [("color", "#fff")] ] [ text ("ball vx: " ++ (toString model.ball.vx)) ]
        , div [ style [("color", "#fff")] ] [ text ("ball vy: " ++ (toString model.ball.vy)) ]
        ]

board : Model -> Html Msg
board model =
    div [ style pong ]
        [ div [ id "player", style <| paddle_player <| model.player ] []
        , div [ id "cpu", style <| paddle_enemy <| model.cpu ] []
        , div [ style score_player ] [ text <| toString <| model.playerScore ]
        , div [ style score_enemy ] [ text <| toString <| model.cpuScore ]
        , div [ style net ] []
        , div [ style <| ballStyle <| model.ball ] []
        ]

mainWrapStyle : List (String, String)
mainWrapStyle =
    [ ("background", "radial-gradient(#222,#111)")
    , ("position", "absolute")
    , ("width", "100%")
    , ("height", "100%")
    ]

sliderStyle : List (String, String)
sliderStyle =
    [ ("display", "flex")
    , ("flex-direction", "column")
    , ("height", "1080px")
    , ("justify-content", "center")
    , ("left", "50%")
    , ("margin", "-540px 0 0 -960px")
    , ("opacity", "1")
    , ("position", "absolute")
    , ("top", "50%")
    , ("width", "1920px")
    ]

sliderWrapStyle : List (String, String)
sliderWrapStyle =
    [ ("bottom", "calc(7vh + 80px)")
    , ("left", "7vw")
    , ("position", "absolute")
    , ("right", "7vw")
    , ("top", "7vh")
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
    , ("transform", "scale(0.4)")
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

ballStyle : Ball -> List (String, String)
ballStyle ball =
    [ ("position", "absolute")
    , ("background", "#fff")
    , ("width", "60px")
    , ("height", "60px")
    , ("transform", "translate(" ++ (toString ball.x) ++ "px, " ++ (toString ball.y) ++ "px)")
    ]
