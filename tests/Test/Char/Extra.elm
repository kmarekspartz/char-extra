module Test.Char.Extra (tests) where

import String
import Char.Extra exposing (..)
import List

import ElmTest.Assertion exposing (..)
import ElmTest.Test exposing (..)


space = String.toList " \t\r\n\v\f"
lower = [ 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' ]
upper = [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ]
dec = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' ]


tests : Test
tests = suite "Char"
  [ suite "Extra"
    [ suite "isWhitespace"
      [ test "(spaces)" <| assertEqual (True) (List.all isWhitespace space)
      , test "a-z" <| assertEqual (False) (List.any isWhitespace lower)
      , test "A-Z" <| assertEqual (False) (List.any isWhitespace upper)
      , test "0-9" <| assertEqual (False) (List.any isWhitespace dec)
      ]
    ]
  ]
