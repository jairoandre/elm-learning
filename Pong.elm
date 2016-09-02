module Main exposing (..)

import Html exposing (..)
import Html.App as App
import Html.Attributes exposing (..)
import Time exposing (Time)
import AnimationFrame
import Keyboard
import Random


main : Program Never
main =
    App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


config :
    { gameWidth : Float
    , gameHeight : Float
    , paddleWidth : Float
    , paddleHeight : Float
    , paddleSpeed : Float
    , ballWidth : Float
    , ballHeight : Float
    , ballStartSpeed : Float
    , scoreMax : Int
    }
config =
    { gameWidth = 1920.0
    , gameHeight = 1080.0
    , paddleWidth = 60.0
    , paddleHeight = 240.0
    , paddleSpeed = 20.0
    , ballWidth = 60.0
    , ballHeight = 60.0
    , ballStartSpeed = 20.0
    , scoreMax = 5
    }


config_ :
    { ballSpeed : Float
    , ballInitialX : Float
    , ballInitialY : Float
    }
config_ =
    { ballSpeed = config.ballStartSpeed
    , ballInitialX = (config.gameWidth / 2) - (config.ballWidth / 2)
    , ballInitialY = (config.gameHeight / 2) - (config.ballHeight / 2)
    }


type alias Model =
    { ball : Ball
    , player : Paddle
    , cpu : Paddle
    , playerScore : Int
    , cpuScore : Int
    , maxScore : Int
    , seed : Maybe Random.Seed
    , rnd : Float
    , gameCount : Float
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
    , reseting : Int
    , lastScored : Int
    }


init : ( Model, Cmd Msg )
init =
    ( Model initBall initPlayer initCpu 0 0 5 Nothing 0 0, Cmd.none )


initBall : Ball
initBall =
    Ball config_.ballInitialX config_.ballInitialY config.ballWidth config.ballHeight config_.ballSpeed config_.ballSpeed 0 0


initPlayer : Paddle
initPlayer =
    Paddle 0.0 ((config.gameHeight / 2) - (config.paddleHeight / 2)) config.paddleWidth config.paddleHeight config.paddleSpeed False False


initCpu : Paddle
initCpu =
    Paddle (config.gameWidth - config.paddleWidth) ((config.gameHeight / 2) - (config.paddleHeight / 2)) config.paddleWidth config.paddleHeight config.paddleSpeed False False



-- UPDATE


type Msg
    = Loop Time
    | KeyDownMsg Keyboard.KeyCode
    | KeyUpMsg Keyboard.KeyCode


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        Loop newTime ->
            let
                ( rnd, seed ) =
                    case model.seed of
                        Nothing ->
                            ( 0, Random.initialSeed <| round <| newTime )

                        Just s ->
                            Random.step (Random.float 0 1) s

                ball =
                    model.ball

                cpuScore =
                    if (ball.x < 0) then
                        model.cpuScore + 1
                    else
                        model.cpuScore

                playerScore =
                    if ((ball.x + ball.w) > config.gameWidth) then
                        model.playerScore + 1
                    else
                        model.playerScore
            in
                ( { model
                    | ball = (updateBall model)
                    , player = (updatePlayer model.player)
                    , cpu = (updateCpu model.cpu model.ball rnd)
                    , cpuScore = cpuScore
                    , playerScore = playerScore
                    , seed = Just seed
                    , rnd = rnd
                    , gameCount = model.gameCount + 1
                  }
                , Cmd.none
                )

        KeyDownMsg code ->
            ( { model | player = (changePaddleDirection model.player code True) }, Cmd.none )

        KeyUpMsg code ->
            ( { model | player = (changePaddleDirection model.player code False) }, Cmd.none )


limitBorder : Paddle -> Bool -> Float
limitBorder paddle up =
    let
        newY =
            if up then
                paddle.y - paddle.s
            else
                paddle.y + paddle.s
    in
        if newY < 0 then
            0
        else if newY > (config.gameHeight - paddle.h) then
            config.gameHeight - paddle.h
        else
            newY


updatePlayer : Paddle -> Paddle
updatePlayer paddle =
    if paddle.u then
        { paddle | y = (limitBorder paddle True) }
    else if paddle.d then
        { paddle | y = (limitBorder paddle False) }
    else
        paddle


updateCpu : Paddle -> Ball -> Float -> Paddle
updateCpu cpu ball rnd =
    if rnd > 0.05 then
        if (ball.y + config.ballHeight) < (cpu.y + (cpu.h / 2)) then
            { cpu | y = (limitBorder cpu True) }
        else if ball.y > (cpu.y + (cpu.h / 2)) then
            { cpu | y = (limitBorder cpu False) }
        else
            cpu
    else
        cpu


changePaddleDirection : Paddle -> Keyboard.KeyCode -> Bool -> Paddle
changePaddleDirection player code down =
    if code == 38 then
        if down then
            { player | u = True }
        else
            { player | u = False }
    else if code == 40 then
        if down then
            { player | d = True }
        else
            { player | d = False }
    else
        player


newCoord : Float -> Float -> Float -> Float -> Float
newCoord coord offSet limit velocity =
    if coord < 0 then
        0
    else if (coord + offSet) > limit then
        limit - offSet
    else
        coord + velocity


newVelocity : Float -> Float -> Float -> Float -> Float
newVelocity coord offSet limit velocity =
    if coord < 0 then
        velocity * -1
    else if (coord + offSet) > limit then
        velocity * -1
    else
        velocity


updateBall : Model -> Ball
updateBall model =
    let
        ball =
            model.ball

        player =
            model.player

        cpu =
            model.cpu

        cpuScored =
            ball.x < 0

        playerScored =
            (ball.x + ball.w) > config.gameWidth

        ballScored =
            cpuScored || playerScored

        reseting =
            if ballScored then
                100
            else
                Basics.max 0 (ball.reseting - 1)

        resetingVx =
            if ball.reseting <= 5 then
                if ball.lastScored == 0 then
                    config.ballStartSpeed * (-1)
                else
                    config.ballStartSpeed
            else
                0

        lastScored =
            if playerScored then
                0
            else
                1

        ( x, vx ) =
            if reseting > 0 then
                ( config_.ballInitialX, resetingVx )
            else if (checkCollision ball player) then
                ( player.x + player.w + 1, ball.vx * -1 )
            else if (checkCollision ball cpu) then
                ( cpu.x - cpu.w - 1, ball.vx * -1 )
            else
                ( newCoord ball.x ball.w config.gameWidth ball.vx, newVelocity ball.x ball.w config.gameWidth ball.vx )

        ( y, vy ) =
            if reseting > 0 then
                ( config_.ballInitialY, resetingVx )
            else
                ( newCoord ball.y ball.h config.gameHeight ball.vy, newVelocity ball.y ball.h config.gameHeight ball.vy )
    in
        { ball | x = x, vx = vx, y = y, vy = vy, reseting = reseting, lastScored = lastScored }


checkAbove : Ball -> Paddle -> Bool
checkAbove ball paddle =
    (ball.y + ball.h) < paddle.y


checkBellow : Ball -> Paddle -> Bool
checkBellow ball paddle =
    ball.y > (paddle.y + paddle.h)


checkRight : Ball -> Paddle -> Bool
checkRight ball paddle =
    ball.x > (paddle.x + paddle.w)


checkLeft : Ball -> Paddle -> Bool
checkLeft ball paddle =
    (ball.x + ball.w) < paddle.x


checkCollision : Ball -> Paddle -> Bool
checkCollision ball paddle =
    not
        ((checkAbove ball paddle)
            || (checkBellow ball paddle)
            || (checkLeft ball paddle)
            || (checkRight ball paddle)
        )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ AnimationFrame.times Loop
        , Keyboard.ups KeyUpMsg
        , Keyboard.downs KeyDownMsg
        ]



-- VIEW


view : Model -> Html Msg
view model =
    div [ style styles.mainWrapper ]
        [ div [ style styles.sliderWrapper ]
            [ div [ style styles.slider ] [ board model ] ]
        , div [ style [ ( "position", "absolute" ), ( "color", "white" ) ] ] [ text (toString model.gameCount) ]
        ]


board : Model -> Html Msg
board model =
    div [ style styles.pong ]
        [ div [ id "player", style <| styles_.playerPaddle <| model.player ] []
        , div [ id "cpu", style <| styles_.enemyPaddle <| model.cpu ] []
        , div [ style styles_.playerScore ] [ text <| toString <| model.playerScore ]
        , div [ style styles_.enemyScore ] [ text <| toString <| model.cpuScore ]
        , div [ style styles.net ] []
        , div [ style <| styles.ball <| model.ball ] []
        ]



-- STYLE


styles :
    { mainWrapper : List ( String, String )
    , slider : List ( String, String )
    , sliderWrapper : List ( String, String )
    , pong : List ( String, String )
    , paddle : List ( String, String )
    , score : List ( String, String )
    , net : List ( String, String )
    , ball : Ball -> List ( String, String )
    }
styles =
    { mainWrapper =
        [ ( "background", "radial-gradient(#222,#111)" )
        , ( "position", "fixed" )
        , ( "width", "100%" )
        , ( "height", "100%" )
        ]
    , slider =
        [ ( "display", "flex" )
        , ( "height", "1080px" )
        , ( "justify-content", "center" )
        , ( "left", "50%" )
        , ( "margin", "-540px 0 0 -960px" )
        , ( "opacity", "1" )
        , ( "position", "absolute" )
        , ( "top", "50%" )
        , ( "width", "1920px" )
        ]
    , sliderWrapper =
        [ ( "bottom", "calc(7vh + 80px)" )
        , ( "left", "7vw" )
        , ( "position", "absolute" )
        , ( "right", "7vw" )
        , ( "top", "7vh" )
        ]
    , pong =
        [ ( "position", "absolute" )
        , ( "width", "1920px" )
        , ( "height", "1080px" )
        , ( "left", "0" )
        , ( "right", "0" )
        , ( "top", "0" )
        , ( "bottom", "0" )
        , ( "margin", "auto" )
        , ( "box-shadow", "0 0 0 8px #666" )
        , ( "transform", "scale(0.4)" )
        ]
    , paddle =
        [ ( "width", "60px" )
        , ( "height", "240px" )
        , ( "position", "absolute" )
        ]
    , score =
        [ ( "font", "bold 6em/1 'Robot Mono', monospace" )
        , ( "top", "80px" )
        , ( "position", "absolute" )
        ]
    , net =
        [ ( "position", "absolute" )
        , ( "background", "#666" )
        , ( "width", "4px" )
        , ( "height", "100%" )
        , ( "left", "50%" )
        , ( "top", "0" )
        , ( "margin", "left -2px" )
        ]
    , ball =
        \ball ->
            [ ( "position", "absolute" )
            , ( "background", "#fff" )
            , ( "width", "60px" )
            , ( "height", "60px" )
            , ( "transform", "translate(" ++ (toString ball.x) ++ "px, " ++ (toString ball.y) ++ "px)" )
            ]
    }


styles_ :
    { playerPaddle : Paddle -> List ( String, String )
    , enemyPaddle : Paddle -> List ( String, String )
    , playerScore : List ( String, String )
    , enemyScore : List ( String, String )
    }
styles_ =
    { playerPaddle =
        \p ->
            styles.paddle
                ++ [ ( "background", "hsl(130, 100%, 60%)" )
                   , ( "top", (toString p.y) ++ "px" )
                   , ( "left", (toString p.x) ++ "px" )
                   ]
    , enemyPaddle =
        \p ->
            styles.paddle
                ++ [ ( "background", "hsl(200, 100%, 60%)" )
                   , ( "top", (toString p.y) ++ "px" )
                   , ( "left", (toString p.x) ++ "px" )
                   ]
    , playerScore =
        styles.score
            ++ [ ( "color", "hsl(130, 100%, 60%)" )
               , ( "left", "180px" )
               ]
    , enemyScore =
        styles.score
            ++ [ ( "color", "hsl(200, 100%, 60%)" )
               , ( "right", "180px" )
               ]
    }
