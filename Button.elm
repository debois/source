import Html.App exposing (map)
import Html exposing (button, text, Html, Attribute, div)
import Html.Events exposing (onClick)

{- Pretend TEA component for button that animates on
click. 
-}

type ButtonMsg 
  = Click
  | StartAnimation
  | StopAnimation


buttonView : (List (Attribute ButtonMsg)) -> String -> Html ButtonMsg 
buttonView attrs str =
  Html.button attrs [ text str ]


{- Now my component, with my own Msg. -}
type Msg 
  = FetchData
  | ForwardToButton ButtonMsg

view : Html Msg 
view = 
  div 
    [] 
    [ buttonView 
        [ onClick FetchData ]
        "Click me!"
      |> map ForwardToButton
    ]
