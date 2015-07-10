module Char.Extra where

{-| Extra functions for working with characters.

# Classification
@docs isWhitespace

-}

import String
import List

{-| True for ASCII whitesapce characters `\b\t\n\v\f\r` -}
isWhitespace : Char -> Bool
isWhitespace char =
  List.member char <| String.toList " \t\r\n\v\f"
