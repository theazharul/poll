module Utils.Card exposing (card, productCard)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Utils.Color exposing (color)
import Utils.Element exposing (edges)


card cardHeader cardBody =
    column [ centerX, Border.glow color.ash 10 ]
        [ el
            [ Background.color Utils.Color.primaryColor
            , Font.color color.white
            , Font.heavy
            , width fill
            , Font.size 25
            , paddingXY 100 20
            ]
          <|
            el [ centerX, centerY ] <|
                text cardHeader
        , el
            [ Background.color color.white
            , width fill
            , paddingXY 100 50
            , Border.color Utils.Color.primaryColor
            , Border.width 1
            ]
          <|
            cardBody
        ]


productCard product =
    el
        [ width fill
        , paddingEach { edges | top = 20 }
        ]
    <|
        column
            [ centerX
            , mouseOver [ Border.glow (rgb255 0x87 0x87 0x87) 3 ]
            , width fill
            , Border.color color.ash
            , Border.rounded 10
            , clip
            , Border.width 1
            ]
            [ el
                [ Background.color Utils.Color.primaryColor
                , Font.color color.white
                , Font.heavy
                , Font.size 25
                , width fill
                , height (px 200)
                ]
              <|
                el [ centerX, centerY ] <|
                    image []
                        { src = product.thumb
                        , description = ""
                        }
            , column
                [ Background.color color.white
                , width fill
                , height (px 150)
                , padding 10
                , spacing 10

                -- , explain Debug.todo
                ]
              <|
                [ paragraph [ height (px 70), clip ] [ Utils.Element.viewLink [ Font.size 18, Font.bold ] "/" product.title ]
                , row [ alignBottom, width fill ]
                    [ el [] <| text ("৳" ++ String.fromFloat product.price)
                    , el [ alignRight ] <| Utils.Element.linkButton "/" "Enroll Now"
                    ]
                ]
            ]
