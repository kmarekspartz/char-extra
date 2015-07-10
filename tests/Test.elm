module Main where

import ElmTest.Runner.Element exposing (runDisplay)

import Test.Char.Extra

tests = Test.Char.Extra.tests

main = runDisplay tests
