module Clock exposing (clock)

import Svg exposing (..)
import Svg.Attributes exposing (..)


clock : Float -> Float -> Svg msg
clock secondsAngle minutesAngle =
    svg
        [ height "300"
        , width "300"
        , version "1.1"
        , viewBox "0 0 299.99999 299.99998"
        ]
        [ defs []
            [ linearGradient
                [ id "linearGradient5163"
                ]
                [ stop
                    [ stopColor "#fff"
                    , offset "0"
                    ]
                    []
                , stop
                    [ stopColor "#fff"
                    , stopOpacity "0"
                    , offset "1"
                    ]
                    []
                ]
            , linearGradient
                [ id "linearGradient4762"
                ]
                [ stop
                    [ stopColor "#4d4d4d"
                    , offset "0"
                    ]
                    []
                , stop
                    [ stopColor "#4d4d4d"
                    , stopOpacity "0"
                    , offset "1"
                    ]
                    []
                ]
            , linearGradient
                [ id "linearGradient4752"
                , x1 "226.27"
                , xlinkHref "#linearGradient4762"
                , gradientUnits "userSpaceOnUse"
                , x2 "226.27"
                , gradientTransform "matrix(2.2097,0,0,2.2097,-350,-223.85)"
                , y1 "102.01"
                , y2 "149.74"
                ]
                []
            , linearGradient
                [ id "linearGradient4756"
                , x1 "226.27"
                , xlinkHref "#linearGradient4762"
                , gradientUnits "userSpaceOnUse"
                , x2 "226.27"
                , gradientTransform "matrix(2.2097,0,0,-2.2097,-350,523.85)"
                , y1 "102.01"
                , y2 "149.74"
                ]
                []
            , linearGradient
                [ id "linearGradient4768"
                , x1 "160.16"
                , xlinkHref "#linearGradient4762"
                , gradientUnits "userSpaceOnUse"
                , x2 "222.03"
                , gradientTransform "matrix(2.2097,0,0,-2.2097,-350,-223.85)"
                , y1 "-169.19"
                , y2 "-169.19"
                ]
                []
            , linearGradient
                [ id "linearGradient4778"
                , x1 "160.16"
                , xlinkHref "#linearGradient4762"
                , gradientUnits "userSpaceOnUse"
                , x2 "222.03"
                , gradientTransform "matrix(-2.2097,0,0,-2.2097,650,-223.85)"
                , y1 "-169.19"
                , y2 "-169.19"
                ]
                []
            , linearGradient
                [ id "linearGradient4798"
                , x1 "-226.27"
                , gradientUnits "userSpaceOnUse"
                , x2 "-226.27"
                , gradientTransform "matrix(-2.2097,0,0,-2.2097,-350,-223.85)"
                , y1 "-110.14"
                , y2 "-199.24"
                ]
                [ stop
                    [ offset "0"
                    ]
                    []
                , stop
                    [ stopOpacity "0"
                    , offset "1"
                    ]
                    []
                ]
            , radialGradient
                [ id "radialGradient4820"
                , xlinkHref "#linearGradient5163"
                , gradientUnits "userSpaceOnUse"
                , cy "-169.19"
                , cx "-226.27"
                , gradientTransform "matrix(-2.2372,0,0,-2.2372,-356.21,-228.5)"
                , r "56.922"
                ]
                []
            , linearGradient
                [ id "linearGradient5169"
                , x1 "18.007"
                , xlinkHref "#linearGradient5163"
                , gradientUnits "userSpaceOnUse"
                , x2 "84.59"
                , gradientTransform "matrix(1.5564 0 0 1.5564 0 .080955)"
                , y1 "13.286"
                , y2 "79.869"
                ]
                []
            ]
        , Svg.path
            [ fill "#ccc"
            , d "m300 150a150 150 0 0 1 -150 150 150 150 0 0 1 -150 -150 150 150 0 0 1 150 -150 150 150 0 0 1 150 150z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4752)"
            , d "m300 150a150 150 0 0 1 -150 150 150 150 0 0 1 -150 -150 150 150 0 0 1 150 -150 150 150 0 0 1 150 150z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4756)"
            , d "m300 150a150 150 0 0 0 -150 -150 150 150 0 0 0 -150 150 150 150 0 0 0 150 150 150 150 0 0 0 150 -150z"
            ]
            []
        , Svg.path
            [ fill "#ccc"
            , d "m300 150a150 150 0 0 1 -150 150 150 150 0 0 1 -150 -150 150 150 0 0 1 150 -150 150 150 0 0 1 150 150z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4752)"
            , d "m300 150a150 150 0 0 1 -150 150 150 150 0 0 1 -150 -150 150 150 0 0 1 150 -150 150 150 0 0 1 150 150z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4756)"
            , d "m300 150a150 150 0 0 0 -150 -150 150 150 0 0 0 -150 150 150 150 0 0 0 150 150 150 150 0 0 0 150 -150z"
            ]
            []
        , Svg.path
            [ fill "#e6e6e6"
            , d "m296.09 150a146.09 146.09 0 0 0 -146.09 -146.09 146.09 146.09 0 0 0 -146.09 146.09 146.09 146.09 0 0 0 146.09 146.09 146.09 146.09 0 0 0 146.09 -146.09z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4768)"
            , d "m296.09 150a146.09 146.09 0 0 0 -146.09 -146.09 146.09 146.09 0 0 0 -146.09 146.09 146.09 146.09 0 0 0 146.09 146.09 146.09 146.09 0 0 0 146.09 -146.09z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4778)"
            , d "m3.9063 150a146.09 146.09 0 0 1 146.09 -146.09 146.09 146.09 0 0 1 146.09 146.09 146.09 146.09 0 0 1 -146.09 146.09 146.09 146.09 0 0 1 -146.09 -146.09z"
            ]
            []
        , Svg.path
            [ fill "#fff"
            , d "m19.531 150a130.47 130.47 0 0 1 130.47 -130.47 130.47 130.47 0 0 1 130.47 130.47 130.47 130.47 0 0 1 -130.47 130.47 130.47 130.47 0 0 1 -130.47 -130.47z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4798)"
            , d "m19.531 150a130.47 130.47 0 0 1 130.47 -130.47 130.47 130.47 0 0 1 130.47 130.47 130.47 130.47 0 0 1 -130.47 130.47 130.47 130.47 0 0 1 -130.47 -130.47z"
            ]
            []
        , Svg.path
            [ d "m24.219 150a125.78 125.78 0 0 1 125.78 -125.78 125.78 125.78 0 0 1 125.78 125.78 125.78 125.78 0 0 1 -125.78 125.78 125.78 125.78 0 0 1 -125.78 -125.78z"
            , stroke "#b3b3b3"
            , strokeWidth ".88388"
            , fill "#ccc"
            ]
            []
        , Svg.path
            [ fill "url(#radialGradient4820)"
            , d "m22.656 150a127.34 127.34 0 0 1 127.34 -127.34 127.34 127.34 0 0 1 127.34 127.34 127.34 127.34 0 0 1 -127.34 127.34 127.34 127.34 0 0 1 -127.34 -127.34z"
            ]
            []
        , rect
            [ id "rect4860"
            , y "26.898"
            , width "1.4595"
            , x "149.27"
            , height "16.875"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.99452 .10453 -.10453 .99452 16.464 -14.859)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.97815 .20791 -.20791 .97815 34.391 -27.917)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.95106 .30902 -.30902 .95106 53.585 -39.028)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.91355 .40674 -.40674 .91355 73.835 -48.073)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.86603 .5 -.5 .86603 94.919 -54.951)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.80902 .58779 -.58779 .80902 116.61 -59.588)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.74314 .66913 -.66913 .74314 138.66 -61.932)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.66913 .74314 -.74314 .66913 160.84 -61.958)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.58779 .80902 -.80902 .58779 182.9 -59.666)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.5 .86603 -.86603 .5 204.6 -55.081)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.40674 .91355 -.91355 .40674 225.7 -48.252)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.30902 .95106 -.95106 .30902 245.97 -39.256)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.20791 .97815 -.97815 .20791 265.19 -28.189)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.10453 .99452 -.99452 .10453 283.15 -15.175)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(0 1 -1 0 299.65 -.35405)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.10453 .99452 -.99452 -.10453 314.51 16.11)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.20791 .97815 -.97815 -.20791 327.56 34.037)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.30902 .95106 -.95106 -.30902 338.67 53.231)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.40674 .91355 -.91355 -.40674 347.72 73.481)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.5 .86603 -.86603 -.5 354.6 94.565)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.58779 .80902 -.80902 -.58779 359.23 116.25)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.66913 .74314 -.74314 -.66913 361.58 138.31)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.74314 .66913 -.66913 -.74314 361.6 160.48)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.80902 .58779 -.58779 -.80902 359.31 182.54)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.86603 .5 -.5 -.86603 354.73 204.24)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.91355 .40674 -.40674 -.91355 347.9 225.34)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.95106 .30902 -.30902 -.95106 338.9 245.62)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.97815 .20791 -.20791 -.97815 327.84 264.84)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.99452 .10453 -.10453 -.99452 314.82 282.79)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-1,0,0,-1,300,299.29)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.99452 -.10453 .10453 -.99452 283.54 314.15)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.97815 -.20791 .20791 -.97815 265.61 327.21)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.95106 -.30902 .30902 -.95106 246.42 338.32)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.91355 -.40674 .40674 -.91355 226.17 347.36)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.86603 -.5 .5 -.86603 205.08 354.24)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.80902 -.58779 .58779 -.80902 183.39 358.88)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.74314 -.66913 .66913 -.74314 161.34 361.22)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.66913 -.74314 .74314 -.66913 139.16 361.25)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.58779 -.80902 .80902 -.58779 117.1 358.96)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.5 -.86603 .86603 -.5 95.403 354.37)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.40674 -.91355 .91355 -.40674 74.302 347.54)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.30902 -.95106 .95106 -.30902 54.031 338.55)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.20791 -.97815 .97815 -.20791 34.811 327.48)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.10453 -.99452 .99452 -.10453 16.853 314.47)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(0 -1 1 0 .35405 299.65)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.10453 -.99452 .99452 .10453 -14.505 283.18)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.20791 -.97815 .97815 .20791 -27.563 265.25)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.30902 -.95106 .95106 .30902 -38.674 246.06)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.40674 -.91355 .91355 .40674 -47.719 225.81)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.5 -.86603 .86603 .5 -54.597 204.73)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.58779 -.80902 .80902 .58779 -59.234 183.04)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.66913 -.74314 .74314 .66913 -61.578 160.98)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.74314 -.66913 .66913 .74314 -61.604 138.81)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.80902 -.58779 .58779 .80902 -59.312 116.75)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.86603 -.5 .5 .86603 -54.727 95.049)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.91355 -.40674 .40674 .91355 -47.898 73.948)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.95106 -.30902 .30902 .95106 -38.902 53.677)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.97815 -.20791 .20791 .97815 -27.835 34.457)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.99452 -.10453 .10453 .99452 -14.821 16.499)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , rect
            [ id "rect4986"
            , y "25.643"
            , width "7.4246"
            , x "146.29"
            , height "29.168"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(.86603 .5 -.5 .86603 94.834 -54.974)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(.5 .86603 -.86603 .5 204.45 -55.166)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(0 1 -1 0 299.48 -.52445)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-.5 .86603 -.86603 -.5 354.45 94.31)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-.86603 .5 -.5 -.86603 354.64 203.93)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-1,0,0,-1,300,298.95)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-.86603 -.5 .5 -.86603 205.17 353.93)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-.5 -.86603 .86603 -.5 95.55 354.12)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(0 -1 1 0 .52445 299.48)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(.5 -.86603 .86603 .5 -54.45 204.64)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(.86603 -.5 .5 .86603 -54.642 95.026)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , g
            [ fontSize "30px"
            , fontFamily "sans-serif"
            ]
            [ text'
                [ Svg.Attributes.style "word-spacing:0px;letter-spacing:0px"
                , xmlSpace "preserve"
                , y "83.449448"
                , x "130.75928"
                ]
                [ tspan
                    [ fontSize "30px"
                    , y "83.449448"
                    , x "130.75928"
                    , fontFamily "sans-serif"
                    ]
                    []
                ]
            , text'
                [ Svg.Attributes.style "word-spacing:0px;letter-spacing:0px"
                , xmlSpace "preserve"
                , y "160.92041"
                , x "223.79932"
                ]
                [ tspan
                    [ fontSize "30px"
                    , y "160.92041"
                    , x "223.79932"
                    , fontFamily "sans-serif"
                    ]
                    []
                ]
            , text'
                [ Svg.Attributes.style "word-spacing:0px;letter-spacing:0px"
                , xmlSpace "preserve"
                , y "235.12384"
                , x "140.35399"
                ]
                [ tspan
                    [ fontSize "30px"
                    , y "235.12384"
                    , x "140.35399"
                    , fontFamily "sans-serif"
                    ]
                    []
                ]
            , text'
                [ Svg.Attributes.style "word-spacing:0px;letter-spacing:0px"
                , xmlSpace "preserve"
                , y "160.92041"
                , x "57.805992"
                ]
                [ tspan
                    [ fontSize "30px"
                    , y "160.92041"
                    , x "57.805992"
                    , fontFamily "sans-serif"
                    ]
                    []
                ]
            ]
        , Svg.path
            [ fill "#999"
            , d "m146.1 150a3.9044 3.9044 0 0 1 3.9 -3.9 3.9044 3.9044 0 0 1 3.9 3.9 3.9044 3.9044 0 0 1 -3.9 3.9 3.9044 3.9044 0 0 1 -3.9 -3.9z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient5169)"
            , d "m150 27.06a122.94 122.94 0 0 0 -122.94 122.94 122.94 122.94 0 0 0 69.292 110.45 122.94 122.94 0 0 1 -31.876 -82.39 122.94 122.94 0 0 1 122.94 -122.94 122.94 122.94 0 0 1 53.64 12.492 122.94 122.94 0 0 0 -91.06 -40.552z"
            ]
            []
        , Svg.path
            [ fill "#e6e6e6"
            , d "m296.09 150a146.09 146.09 0 0 0 -146.09 -146.09 146.09 146.09 0 0 0 -146.09 146.09 146.09 146.09 0 0 0 146.09 146.09 146.09 146.09 0 0 0 146.09 -146.09z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4768)"
            , d "m296.09 150a146.09 146.09 0 0 0 -146.09 -146.09 146.09 146.09 0 0 0 -146.09 146.09 146.09 146.09 0 0 0 146.09 146.09 146.09 146.09 0 0 0 146.09 -146.09z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4778)"
            , d "m3.9063 150a146.09 146.09 0 0 1 146.09 -146.09 146.09 146.09 0 0 1 146.09 146.09 146.09 146.09 0 0 1 -146.09 146.09 146.09 146.09 0 0 1 -146.09 -146.09z"
            ]
            []
        , Svg.path
            [ fill "#fff"
            , d "m19.531 150a130.47 130.47 0 0 1 130.47 -130.47 130.47 130.47 0 0 1 130.47 130.47 130.47 130.47 0 0 1 -130.47 130.47 130.47 130.47 0 0 1 -130.47 -130.47z"
            ]
            []
        , Svg.path
            [ fill "url(#linearGradient4798)"
            , d "m19.531 150a130.47 130.47 0 0 1 130.47 -130.47 130.47 130.47 0 0 1 130.47 130.47 130.47 130.47 0 0 1 -130.47 130.47 130.47 130.47 0 0 1 -130.47 -130.47z"
            ]
            []
        , Svg.path
            [ d "m24.219 150a125.78 125.78 0 0 1 125.78 -125.78 125.78 125.78 0 0 1 125.78 125.78 125.78 125.78 0 0 1 -125.78 125.78 125.78 125.78 0 0 1 -125.78 -125.78z"
            , stroke "#b3b3b3"
            , strokeWidth ".88388"
            , fill "#ccc"
            ]
            []
        , Svg.path
            [ fill "url(#radialGradient4820)"
            , d "m22.656 150a127.34 127.34 0 0 1 127.34 -127.34 127.34 127.34 0 0 1 127.34 127.34 127.34 127.34 0 0 1 -127.34 127.34 127.34 127.34 0 0 1 -127.34 -127.34z"
            ]
            []
        , rect
            [ y "26.898"
            , width "1.4595"
            , x "149.27"
            , height "16.875"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.99452 .10453 -.10453 .99452 16.464 -14.859)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.97815 .20791 -.20791 .97815 34.391 -27.917)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.95106 .30902 -.30902 .95106 53.585 -39.028)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.91355 .40674 -.40674 .91355 73.835 -48.073)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.86603 .5 -.5 .86603 94.919 -54.951)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.80902 .58779 -.58779 .80902 116.61 -59.588)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.74314 .66913 -.66913 .74314 138.66 -61.932)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.66913 .74314 -.74314 .66913 160.84 -61.958)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.58779 .80902 -.80902 .58779 182.9 -59.666)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.5 .86603 -.86603 .5 204.6 -55.081)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.40674 .91355 -.91355 .40674 225.7 -48.252)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.30902 .95106 -.95106 .30902 245.97 -39.256)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.20791 .97815 -.97815 .20791 265.19 -28.189)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.10453 .99452 -.99452 .10453 283.15 -15.175)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(0 1 -1 0 299.65 -.35405)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.10453 .99452 -.99452 -.10453 314.51 16.11)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.20791 .97815 -.97815 -.20791 327.56 34.037)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.30902 .95106 -.95106 -.30902 338.67 53.231)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.40674 .91355 -.91355 -.40674 347.72 73.481)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.5 .86603 -.86603 -.5 354.6 94.565)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.58779 .80902 -.80902 -.58779 359.23 116.25)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.66913 .74314 -.74314 -.66913 361.58 138.31)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.74314 .66913 -.66913 -.74314 361.6 160.48)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.80902 .58779 -.58779 -.80902 359.31 182.54)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.86603 .5 -.5 -.86603 354.73 204.24)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.91355 .40674 -.40674 -.91355 347.9 225.34)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.95106 .30902 -.30902 -.95106 338.9 245.62)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.97815 .20791 -.20791 -.97815 327.84 264.84)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.99452 .10453 -.10453 -.99452 314.82 282.79)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-1,0,0,-1,300,299.29)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.99452 -.10453 .10453 -.99452 283.54 314.15)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.97815 -.20791 .20791 -.97815 265.61 327.21)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.95106 -.30902 .30902 -.95106 246.42 338.32)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.91355 -.40674 .40674 -.91355 226.17 347.36)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.86603 -.5 .5 -.86603 205.08 354.24)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.80902 -.58779 .58779 -.80902 183.39 358.88)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.74314 -.66913 .66913 -.74314 161.34 361.22)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.66913 -.74314 .74314 -.66913 139.16 361.25)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.58779 -.80902 .80902 -.58779 117.1 358.96)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.5 -.86603 .86603 -.5 95.403 354.37)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.40674 -.91355 .91355 -.40674 74.302 347.54)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.30902 -.95106 .95106 -.30902 54.031 338.55)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.20791 -.97815 .97815 -.20791 34.811 327.48)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(-.10453 -.99452 .99452 -.10453 16.853 314.47)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(0 -1 1 0 .35405 299.65)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.10453 -.99452 .99452 .10453 -14.505 283.18)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.20791 -.97815 .97815 .20791 -27.563 265.25)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.30902 -.95106 .95106 .30902 -38.674 246.06)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.40674 -.91355 .91355 .40674 -47.719 225.81)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.5 -.86603 .86603 .5 -54.597 204.73)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.58779 -.80902 .80902 .58779 -59.234 183.04)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.66913 -.74314 .74314 .66913 -61.578 160.98)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.74314 -.66913 .66913 .74314 -61.604 138.81)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.80902 -.58779 .58779 .80902 -59.312 116.75)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.86603 -.5 .5 .86603 -54.727 95.049)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.91355 -.40674 .40674 .91355 -47.898 73.948)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.95106 -.30902 .30902 .95106 -38.902 53.677)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.97815 -.20791 .20791 .97815 -27.835 34.457)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4860"
            , transform "matrix(.99452 -.10453 .10453 .99452 -14.821 16.499)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , rect
            [ y "25.643"
            , width "7.4246"
            , x "146.29"
            , height "29.168"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(.86603 .5 -.5 .86603 94.834 -54.974)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(.5 .86603 -.86603 .5 204.45 -55.166)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(0 1 -1 0 299.48 -.52445)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-.5 .86603 -.86603 -.5 354.45 94.31)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-.86603 .5 -.5 -.86603 354.64 203.93)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-1,0,0,-1,300,298.95)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-.86603 -.5 .5 -.86603 205.17 353.93)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(-.5 -.86603 .86603 -.5 95.55 354.12)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(0 -1 1 0 .52445 299.48)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(.5 -.86603 .86603 .5 -54.45 204.64)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , use
            [ xlinkHref "#rect4986"
            , transform "matrix(.86603 -.5 .5 .86603 -54.642 95.026)"
            , height "100%"
            , width "100%"
            , y "0"
            , x "0"
            ]
            []
        , Svg.path
            [ d "m134.48 80.959h4.834v-16.685l-5.2588 1.0547v-2.6953l5.2295-1.0547h2.959v19.38h4.834v2.4902h-12.598v-2.4902z"
            ]
            []
        , Svg.path
            [ d "m155.62 80.959h10.327v2.4902h-13.887v-2.4902q1.6846-1.7432 4.585-4.6729 2.915-2.9443 3.6621-3.7939 1.4209-1.5967 1.9775-2.6953 0.57129-1.1133 0.57129-2.1826 0-1.7432-1.2305-2.8418-1.2158-1.0986-3.1787-1.0986-1.3916 0-2.9443 0.4834-1.5381 0.4834-3.2959 1.4648v-2.9883q1.7871-0.71777 3.3398-1.084 1.5527-0.36621 2.8418-0.36621 3.3984 0 5.4199 1.6992t2.0215 4.541q0 1.3477-0.51269 2.5635-0.49805 1.2012-1.8311 2.8418-0.36621 0.4248-2.3291 2.4609-1.9629 2.0215-5.5371 5.6689z"
            ]
            []
        , Svg.path
            [ d "m235.97 149.13q2.124 0.4541 3.3105 1.8896 1.2012 1.4355 1.2012 3.5449 0 3.2373-2.2266 5.0098t-6.3281 1.7725q-1.377 0-2.8418-0.27832-1.4502-0.26367-3.0029-0.80566v-2.8564q1.2305 0.71777 2.6953 1.084 1.4648 0.36621 3.0615 0.36621 2.7832 0 4.2334-1.0986 1.4648-1.0986 1.4648-3.1934 0-1.9336-1.3623-3.0176-1.3477-1.0986-3.7646-1.0986h-2.5488v-2.4316h2.666q2.1826 0 3.3398-0.86426 1.1572-0.87891 1.1572-2.5195 0-1.6846-1.2012-2.5781-1.1865-0.9082-3.4131-0.9082-1.2158 0-2.6074 0.26367t-3.0615 0.82032v-2.6367q1.6846-0.46875 3.1494-0.70313 1.4795-0.23437 2.7832-0.23437 3.3691 0 5.332 1.5381 1.9629 1.5234 1.9629 4.1309 0 1.8164-1.04 3.0762-1.04 1.2451-2.959 1.7285z"
            ]
            []
        , Svg.path
            [ d "m150.26 223.01q-1.9922 0-3.1641 1.3623-1.1572 1.3623-1.1572 3.7354 0 2.3584 1.1572 3.7354 1.1719 1.3623 3.1641 1.3623t3.1494-1.3623q1.1719-1.377 1.1719-3.7354 0-2.373-1.1719-3.7354-1.1572-1.3623-3.1494-1.3623zm5.874-9.2725v2.6953q-1.1133-0.52735-2.2558-0.80567-1.1279-0.27832-2.2412-0.27832-2.9297 0-4.4824 1.9775-1.5381 1.9775-1.7578 5.9766 0.86426-1.2744 2.168-1.9482 1.3037-0.68848 2.8711-0.68848 3.2959 0 5.2002 2.0068 1.9189 1.9922 1.9189 5.4346 0 3.3691-1.9922 5.4053-1.9922 2.0361-5.3027 2.0361-3.7939 0-5.8008-2.9004-2.0068-2.915-2.0068-8.4375 0-5.1856 2.4609-8.2617 2.4609-3.0908 6.6064-3.0908 1.1133 0 2.2412 0.21972 1.1426 0.21973 2.373 0.65918z"
            ]
            []
        , Svg.path
            [ d "m61.102 160.47v-2.6953q1.1133 0.52734 2.2559 0.80566t2.2412 0.27832q2.9297 0 4.4678-1.9629 1.5527-1.9775 1.7725-5.9912-0.84961 1.2598-2.1533 1.9336-1.3037 0.67383-2.8857 0.67383-3.2812 0-5.2002-1.9775-1.9043-1.9922-1.9043-5.4346 0-3.3691 1.9922-5.4053 1.9922-2.0361 5.3027-2.0361 3.7939 0 5.7861 2.915 2.0068 2.9004 2.0068 8.4375 0 5.1709-2.4609 8.2617-2.4463 3.0762-6.5918 3.0762-1.1133 0-2.2559-0.21972-1.1426-0.21973-2.373-0.65918zm5.8887-9.2725q1.9922 0 3.1494-1.3623 1.1719-1.3623 1.1719-3.7354 0-2.3584-1.1719-3.7207-1.1572-1.377-3.1494-1.377t-3.1641 1.377q-1.1572 1.3623-1.1572 3.7207 0 2.373 1.1572 3.7354 1.1719 1.3623 3.1641 1.3623z"
            ]
            []
        , g []
            [ Svg.path
                [ d "m146.1 150a3.9044 3.9044 0 0 1 3.9 -3.9 3.9044 3.9044 0 0 1 3.9 3.9 3.9044 3.9044 0 0 1 -3.9 3.9 3.9044 3.9044 0 0 1 -3.9 -3.9z"
                ]
                []
            , Svg.path
                [ id "minuto"
                , d "m150 25.644s-2.1856 11.818-7.332 24.615c7.0735 8.5599 4.1815 61.43 5.3047 99.742h2.0273l2.0273-0.00001c1.1232-38.311-1.7688-91.182 5.3047-99.742-5.1464-12.798-7.332-24.615-7.332-24.615z"
                , transform ("rotate(" ++ (toString minutesAngle) ++ " 150 150)")
                , fillRule "evenodd"
                ]
                []
            , Svg.path
                [ id "hour"
                , d "m150 56.312s-1.9436 8.9032-6.5201 18.545c6.2902 6.449 3.7184 46.281 4.7172 75.145h1.8028 1.8028c0.99879-28.864-1.5729-68.696 4.7172-75.145-4.5765-9.6417-6.5201-18.545-6.5201-18.545z"
                , fillRule "evenodd"
                ]
                []
            ]
        , Svg.path
            [ id "seconds"
            , d "m148.91 25.502v133.08h-2.0918v17.324h6.3633v-17.324h-2.0918v-133.08h-2.1797z"
            , transform ("rotate(" ++ (toString secondsAngle) ++ " 150 150)")
            , fill "#f00"
            ]
            []
        ]
