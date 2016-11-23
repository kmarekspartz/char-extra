module Char.Extra exposing (..)

{-| Extra functions for working with characters.

# Classification
@docs isWhitespace

-}

import String
import List


{-| True for ASCII whitesapce characters `\b\t\n\v\f\r`
-}
isWhitespace : Char -> Bool
isWhitespace char =
    List.member char <| String.toList " \t\x0D\n\x0B\x0C"
