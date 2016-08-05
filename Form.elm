import Html exposing (Html, Attribute, div, input, text, button, ul, li)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import String
import Char

main =
  Html.beginnerProgram { model = model, view = view, update = update }

-- MODEL
type alias Messages =
  List String

type alias Model =
  { name: String 
  , age: Int
  , password: String
  , passwordAgain: String
  , messages: Messages
  }

model: Model
model = 
  Model "" 0 "" "" []

-- UPDATE

type Msg
  = Name String
  | Password String
  | PasswordAgain String
  | SubmitForm

update: Msg -> Model -> Model
update action model =
  case action of
    Name name ->
      { model | name = name }

    Password password ->
      { model | password = password }

    PasswordAgain passwordAgain ->
      { model | passwordAgain = passwordAgain }

    SubmitForm ->
      let
        validations = 
          [ checkForUpper model
          , checkForLower model
          , checkForDigit model
          ]
      in
        { model | messages = (List.filter (\msg -> String.length msg > 0) validations)}


viewInput: String -> String -> (String -> Msg) -> Html Msg
viewInput t p f =
  input [ type' t, placeholder p, onInput f ] []

-- VIEW

view: Model -> Html Msg
view model =
  div [ style [ ("margin", "40px") ] ]
  [ viewInput "text" "Name" Name
  , viewInput "password" "Password" Password
  , viewInput "password" "Re-enter password" PasswordAgain
  , button [onClick SubmitForm] [text "Submeter"]
  , viewValidation model
  , printMessages model
  ]


printMessages: Model -> Html a
printMessages model =
  ul [] 
    (List.map (\msg -> li [ style [("color", "red")]] [ text msg ]) model.messages)


viewValidation: Model -> Html msg
viewValidation model =
  let
    (color, message) =
      if model.password == model.passwordAgain then
        ("green", "OK")
      else
        ("red", "Passwords do not match!")
  in
    div [ style [ ("color", color) ] ] [ text message ]

checkPasswordLength: Model -> String
checkPasswordLength model =
  if String.length model.password > 8 then
    "Password has more than 8 characters!"
  else
    ""
errorMessage: String -> Html msg
errorMessage message =
  div [ style [ ("color", "red") ] ] [ text message ]

checkPassword: Model -> (Char -> Bool) -> String -> String
checkPassword model check message =
  if (String.any check model.password) then
    ""
  else 
    message

checkForUpper: Model -> String
checkForUpper model =
  checkPassword model Char.isUpper "Password needs at least one uppercase character."

checkForLower: Model -> String
checkForLower model =
  checkPassword model Char.isLower "Password needs at least one lowercase character."

checkForDigit: Model -> String
checkForDigit model =
  checkPassword model Char.isDigit "Password needs at least one digit character."
