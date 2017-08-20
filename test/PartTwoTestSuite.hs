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
    , problem15TestSuite
    , problem16TestSuite
    -- , problem17TestSuite
    , problem18TestSuite
    -- , problem19TestSuite
    , problem20TestSuite
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
problem14TestSuite =
  testGroup
    "Fourteenth problem"
    [ duplicateElements
    , duplicateElements'
    , duplicateElements''
    , duplicateElements'''
    ]

duplicateElements =
  testCase "Duplicate the elements of a list" $
  assertEqual [] [1, 1, 2, 2, 3, 3] (problem14 [1, 2, 3])

duplicateElements' =
  testCase "Duplicate the elements of a list'" $
  assertEqual [] [1, 1, 2, 2, 3, 3] (problem14' [1, 2, 3])

duplicateElements'' =
  testCase "Duplicate the elements of a list''" $
  assertEqual [] [1, 1, 2, 2, 3, 3] (problem14'' [1, 2, 3])

duplicateElements''' =
  testCase "Duplicate the elements of a list'''" $
  assertEqual [] [1, 1, 2, 2, 3, 3] (problem14''' [1, 2, 3])

-- Fifteenth problem test suite
problem15TestSuite :: TestTree
problem15TestSuite = testGroup "Fifteenth problem" [replicateElements]

replicateElements =
  testCase "Replicate the elements of a list a given number of times" $
  assertEqual [] "aaabbbccc" (problem15 "abc" 3)

-- Sixteenth problem test suite
problem16TestSuite :: TestTree
problem16TestSuite = testGroup "Sixteenth problem" [dropEveryN]

dropEveryN =
  testCase "Drop every N'th element from a list" $
  assertEqual [] "abdeghk" (problem16 "abcdefghik" 3)

-- Eighteenth problem test suite
problem18TestSuite :: TestTree
problem18TestSuite = testGroup "Eighteenth problem" [slice]

slice =
  testCase "Extract a slice from a list" $
  assertEqual
    []
    "cdefg"
    (problem18 ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'k'] 3 7)

-- Twenty problem test suite
problem20TestSuite :: TestTree
problem20TestSuite =
  testGroup "Twenty problem" [removeAt, removeAt', removeAt'', removeAt''']

removeAt =
  testCase "Drop every N'th element from a list" $
  assertEqual [] ('b', "acd") (problem20 2 "abcd")

removeAt' =
  testCase "Drop every N'th element from a list" $
  assertEqual [] ('b', "acd") (problem20' 2 "abcd")

removeAt'' =
  testCase "Drop every N'th element from a list" $
  assertEqual [] (Just 'b', "acd") (problem20'' 2 "abcd")

removeAt''' =
  testCase "Drop every N'th element from a list" $
  assertEqual [] ('b', "acd") (problem20''' 2 "abcd")
