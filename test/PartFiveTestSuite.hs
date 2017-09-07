module PartFiveTestSuite where

import PartFive
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

partFiveTestSuite :: TestTree
partFiveTestSuite =
  testGroup
    "Part Five"
    [ problem46TestSuite
    , problem47TestSuite
    , problem48TestSuite
    , problem49TestSuite
    -- , problem50TestSuite
    ]

-- Forty-sixth problem test suite
problem46TestSuite :: TestTree
problem46TestSuite = testGroup "Forty-sixth problem" [truthTable]

truthTable =
  testCase "Truth table of a given logical expression in two variables" $
  assertEqual
    []
    [ (True, True, True)
    , (True, False, True)
    , (False, True, False)
    , (False, False, False)
    ]
    (problem46 (\a b -> (and' a (or' a b))))

-- Forty-seventh problem test suite
problem47TestSuite :: TestTree
problem47TestSuite = testGroup "Forty-seventh problem" [truthTableOperators]

truthTableOperators =
  testCase
    "Truth table of a given logical expression using operators in two variables" $
  assertEqual
    []
    [ (True, True, True)
    , (True, False, True)
    , (False, True, False)
    , (False, False, False)
    ]
    (problem47 (\a b -> a `and'` (a `or'` not b)))

-- Forty-Eighth problem test suite
problem48TestSuite :: TestTree
problem48TestSuite = testGroup "Forty-Eighth problem" [truthTableN]

truthTableN =
  testCase
    "Truth table of a given logical expression using operators in N variables" $
  assertEqual
    []
    [ ([True, True, True], True)
    , ([True, True, False], True)
    , ([True, False, True], True)
    , ([True, False, False], True)
    , ([False, True, True], True)
    , ([False, True, False], True)
    , ([False, False, True], True)
    , ([False, False, False], True)
    ]
    (problem48
       3
       (\[a, b, c] -> a `and'` (b `or'` c) `equ'` a `and'` b `or'` a `and'` c))

-- Forty-Ninth problem test suite
problem49TestSuite :: TestTree
problem49TestSuite =
  testGroup "Forty-Ninth problem" [grayCode, grayCode', grayCode'']

grayCode =
  testCase "Gray codes" $
  assertEqual
    []
    ["000", "001", "011", "010", "110", "111", "101", "100"]
    (problem49 3)

grayCode' =
  testCase "Gray codes'" $
  assertEqual
    []
    ["000", "001", "011", "010", "110", "111", "101", "100"]
    (problem49' 3)

grayCode'' =
  testCase "Gray codes''" $
  assertEqual
    []
    ["000", "100", "010", "110", "001", "101", "011", "111"]
    (problem49'' 3)

