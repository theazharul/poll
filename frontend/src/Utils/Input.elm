module Utils.Input exposing (primaryButton, viewEmailInput, viewPasswordInput, viewTextInput)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Utils.Color exposing (color)


primaryButton msg label =
    Input.button
        [ Border.rounded 5
        , Font.color color.white
        , Font.bold
        , paddingXY 20 10
        , Background.color Utils.Color.secondaryColor
        ]
        { onPress = msg
        , label = text label
        }


viewTextInput msg defaultText label =
    Input.email []
        { onChange = msg
        , text = defaultText
        , placeholder = Just (Input.placeholder [] (text ("Enter " ++ label)))
        , label = Input.labelLeft [ width (px 170) ] (el [] <| text label)
        }


viewEmailInput msg email label =
    Input.email []
        { onChange = msg
        , text = email
        , placeholder = Just (Input.placeholder [] (text ("Enter " ++ label)))
        , label = Input.labelAbove [ width (px 170) ] (el [] <| text label)
        }


viewPasswordInput msg password label =
    Input.newPassword []
        { onChange = msg
        , text = password
        , placeholder = Just (Input.placeholder [] (text ("Enter " ++ label)))
        , label = Input.labelAbove [ width (px 170) ] (el [] <| text label)
        , show = False
        }
