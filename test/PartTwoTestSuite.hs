module PartTwoTestSuite where

import PartTwo
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

partTwoTestSuite :: TestTree
partTwoTestSuite =
  testGroup
    "Part Two"
    [ problem11TestSuite
    , problem12TestSuite
    , problem13TestSuite
    , problem14TestSuite
    -- , problem15TestSuite
    -- , problem16TestSuite
    -- , problem17TestSuite
    -- , problem19TestSuite
    -- , problem20TestSuite
    ]

-- Eleventh problem test suite
problem11TestSuite :: TestTree
problem11TestSuite =
  testGroup
    "Eleventh problem"
    [modifiedRunLengthEncode, modifiedRunLengthEncode']

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

modifiedRunLengthEncode' =
  testCase "Modified run-length encoding'" $
  assertEqual
    []
    [ Multiple 4 'a'
    , Single 'b'
    , Multiple 2 'c'
    , Multiple 2 'a'
    , Single 'd'
    , Multiple 4 'e'
    ]
    (problem11' "aaaabccaadeeee")

-- Twelfth problem test suite
problem12TestSuite :: TestTree
problem12TestSuite =
  testGroup "Twelfth problem" [modifiedDecode, modifiedDecode']

modifiedDecode =
  testCase "Modified run-length decoding" $
  assertEqual
    []
    "aaaabccaadeeee"
    (problem12
       [ Multiple 4 'a'
       , Single 'b'
       , Multiple 2 'c'
       , Multiple 2 'a'
       , Single 'd'
       , Multiple 4 'e'
       ])

modifiedDecode' =
  testCase "Modified run-length decoding'" $
  assertEqual
    []
    "aaaabccaadeeee"
    (problem12'
       [ Multiple 4 'a'
       , Single 'b'
       , Multiple 2 'c'
       , Multiple 2 'a'
       , Single 'd'
       , Multiple 4 'e'
       ])

-- Thirteenth problem test suite
problem13TestSuite :: TestTree
problem13TestSuite =
  testGroup "Thirteenth problem" [directEncode, directEncode']

directEncode =
  testCase "Direct run-length encoding" $
  assertEqual
    []
    [ Multiple 4 'a'
    , Single 'b'
    , Multiple 2 'c'
    , Multiple 2 'a'
    , Single 'd'
    , Multiple 4 'e'
    ]
    (problem13 "aaaabccaadeeee")

directEncode' =
  testCase "Direct run-length encoding'" $
  assertEqual
    []
    [ Multiple 4 'a'
    , Single 'b'
    , Multiple 2 'c'
    , Multiple 2 'a'
    , Single 'd'
    , Multiple 4 'e'
    ]
    (problem13' "aaaabccaadeeee")

-- Fourteenth problem test suite
problem14TestSuite :: TestTree
problem14TestSuite = testGroup "Fourteenth problem" [duplicate]

duplicate =
  testCase "Duplicate the elements of a list" $
  assertEqual [] [1, 1, 2, 2, 3, 3] (problem14 [1, 2, 3])
