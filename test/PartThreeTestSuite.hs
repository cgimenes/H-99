module PartThreeTestSuite where

import PartThree
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

partThreeTestSuite :: TestTree
partThreeTestSuite =
  testGroup
    "Part Three"
    [ problem21TestSuite
    -- , problem22TestSuite
    -- , problem23TestSuite
    -- , problem24TestSuite
    -- , problem25TestSuite
    -- , problem26TestSuite
    -- , problem27TestSuite
    -- , problem28TestSuite
    ]

-- Twenty-first problem test suite
problem21TestSuite :: TestTree
problem21TestSuite = testGroup "Twenty-first problem" [insertIntoList]

insertIntoList =
  testCase "Insert an element at a given position into a list" $
  assertEqual [] "aXbcd" (problem21 'X' "abcd" 2)
