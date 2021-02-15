module Utils.Element exposing (..)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Utils.Color exposing (color)


edges =
    { top = 0, bottom = 0, left = 0, right = 0 }


viewLink attrs url label =
    link
        ([ Font.color Utils.Color.secondaryColor
         , Font.underline
         ]
            ++ attrs
        )
        { url = url
        , label = text label
        }


linkButton url label =
    link
        [ Border.rounded 5
        , Font.color color.white
        , Font.bold
        , paddingXY 20 10
        , Background.color Utils.Color.secondaryColor
        ]
        { url = url
        , label = text label
        }
