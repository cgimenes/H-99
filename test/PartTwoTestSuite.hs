module PartTwoTestSuite where

import PartTwo
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

partTwoTestSuite :: TestTree
partTwoTestSuite =
  testGroup
    "Part Two"
    [ problem11TestSuite
    -- , problem12TestSuite
    -- , problem13TestSuite
    -- , problem14TestSuite
    -- , problem15TestSuite
    -- , problem16TestSuite
    -- , problem17TestSuite
    -- , problem19TestSuite
    -- , problem20TestSuite
    ]

-- Eleventh problem test suite
problem11TestSuite :: TestTree
problem11TestSuite = testGroup "Eleventh problem" [modifiedRunLengthEncode]

modifiedRunLengthEncode =
  testCase "Modified run-length encoding" $
  assertEqual
    []
    [ Multiple 4 'a'
    , Single 'b'
    , Multiple 2 'c'
    , Multiple 2 'a'
    , Single 'd'
    , Multiple 4 'e'
    ]
    (problem11 "aaaabccaadeeee")
