module PartThreeTestSuite where

import PartThree
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

partThreeTestSuite :: TestTree
partThreeTestSuite =
  testGroup
    "Part Three"
    [ problem21TestSuite
    , problem22TestSuite
    -- , problem23TestSuite
    -- , problem24TestSuite
    -- , problem25TestSuite
    , problem26TestSuite
    -- , problem27TestSuite
    , problem28TestSuite
    ]

-- Twenty-first problem test suite
problem21TestSuite :: TestTree
problem21TestSuite =
  testGroup "Twenty-first problem" [insertIntoList, insertIntoList']

insertIntoList =
  testCase "Insert an element at a given position into a list" $
  assertEqual [] "aXbcd" (problem21 'X' "abcd" 2)

insertIntoList' =
  testCase "Insert an element at a given position into a list'" $
  assertEqual [] "aXbcd" (problem21' 'X' "abcd" 2)

-- Twenty-second problem test suite
problem22TestSuite :: TestTree
problem22TestSuite = testGroup "Twenty-second problem" [range, range']

range =
  testCase "Create a list containing all integers within a given range" $
  assertEqual [] [4, 5, 6, 7, 8, 9] (problem22 4 9)

range' =
  testCase "Create a list containing all integers within a given range'" $
  assertEqual [] [4, 5, 6, 7, 8, 9] (problem22' 4 9)

-- Twenty-sixth problem test suite
problem26TestSuite :: TestTree
problem26TestSuite =
  testGroup "Twenty-sixth problem" [combinations, combinations', combinations'']

combinations =
  testCase
    "Generate the combinations of K distinct objects chosen from the N elements of a list" $
  assertEqual
    []
    [ "abc"
    , "abd"
    , "abe"
    , "abf"
    , "acd"
    , "ace"
    , "acf"
    , "ade"
    , "adf"
    , "aef"
    , "bcd"
    , "bce"
    , "bcf"
    , "bde"
    , "bdf"
    , "bef"
    , "cde"
    , "cdf"
    , "cef"
    , "def"
    ]
    (problem26 3 "abcdef")

combinations' =
  testCase
    "Generate the combinations of K distinct objects chosen from the N elements of a list'" $
  assertEqual
    []
    [ "abc"
    , "abd"
    , "abe"
    , "abf"
    , "acd"
    , "ace"
    , "acf"
    , "ade"
    , "adf"
    , "aef"
    , "bcd"
    , "bce"
    , "bcf"
    , "bde"
    , "bdf"
    , "bef"
    , "cde"
    , "cdf"
    , "cef"
    , "def"
    ]
    (problem26' 3 "abcdef")

combinations'' =
  testCase
    "Generate the combinations of K distinct objects chosen from the N elements of a list''" $
  assertEqual
    []
    [ "abc"
    , "abd"
    , "abe"
    , "abf"
    , "acd"
    , "ace"
    , "acf"
    , "ade"
    , "adf"
    , "aef"
    , "bcd"
    , "bce"
    , "bcf"
    , "bde"
    , "bdf"
    , "bef"
    , "cde"
    , "cdf"
    , "cef"
    , "def"
    ]
    (problem26'' 3 "abcdef")

-- Twenty-eigth problem test suite
problem28TestSuite :: TestTree
problem28TestSuite = testGroup "Twenty-eigth problem" [lsort, lfsort]

lsort =
  testCase "Sorting a list of lists according to length of sublists" $
  assertEqual
    []
    ["o", "de", "de", "mn", "abc", "fgh", "ijkl"]
    (problem28a ["abc", "de", "fgh", "de", "ijkl", "mn", "o"])

lfsort =
  testCase
    "Sort the elements of a list according to their sublists' length frequency" $
  assertEqual
    []
    ["ijkl", "o", "abc", "fgh", "de", "de", "mn"]
    (problem28b ["abc", "de", "fgh", "de", "ijkl", "mn", "o"])
