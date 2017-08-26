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
    -- , problem48TestSuite
    -- , problem49TestSuite
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
