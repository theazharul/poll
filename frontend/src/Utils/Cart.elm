module Utils.Cart exposing (..)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events as Events
import Element.Font as Font
import Element.Input as Input
import Utils.Color exposing (color)
import Utils.Route


type alias Params =
    ()


type alias Model =
    {}


type alias Product =
    { id : Int
    , name : String
    , price : Float
    , quantity : Int
    }


viewCart :
    { mouseEnteredOnCart : msg
    , mouseLeaveOnCart : msg
    }
    -> Element msg
viewCart msg =
    el
        [ alignRight
        , Events.onMouseEnter msg.mouseEnteredOnCart
        , Events.onMouseLeave msg.mouseLeaveOnCart
        , Border.width 1
        , padding 10
        , Border.color color.ash
        , Background.color color.white
        ]
        (text "Hello!")
