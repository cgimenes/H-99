module PartOneTestSuite where

import PartOne
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

partOneTestSuite :: TestTree
partOneTestSuite =
  testGroup
    "Part One"
    [ problem1TestSuite
    , problem2TestSuite
    , problem3TestSuite
    , problem4TestSuite
    , problem5TestSuite
    , problem6TestSuite
    , problem7TestSuite
    , problem8TestSuite
    , problem9TestSuite
    , problem10TestSuite
    ]

-- First problem test suite
problem1TestSuite :: TestTree
problem1TestSuite =
  testGroup "First problem" [lastOfIntegerList, lastOfCharList]

lastOfIntegerList =
  testCase "Last of [1,2,3,4] is 4" $ assertEqual [] 4 (problem1 [1, 2, 3, 4])

lastOfCharList =
  testCase "Last of ['x','y','z'] is 'z'" $
  assertEqual [] 'z' (problem1 ['x', 'y', 'z'])

-- Second problem test suite
problem2TestSuite :: TestTree
problem2TestSuite =
  testGroup "Second problem" [lastButOneOfIntegerList, lastButOneOfCharList]

lastButOneOfIntegerList =
  testCase "Last but one of [1,2,3,4] is 3" $
  assertEqual [] 3 (problem2 [1, 2, 3, 4])

lastButOneOfCharList =
  testCase "Last but one of 'a'..'z' is 'y'" $
  assertEqual [] 'y' (problem2 ['x' .. 'z'])

-- Third problem test suite
problem3TestSuite :: TestTree
problem3TestSuite =
  testGroup "Third problem" [elementAtOfIntegerList, elementAtOfString]

elementAtOfIntegerList =
  testCase "Element 2 of [1,2,3] is 2" $ assertEqual [] 2 (problem3 [1, 2, 3] 2)

elementAtOfString =
  testCase "Element 5 of 'haskell' is 'e'" $
  assertEqual [] 'e' (problem3 "haskell" 5)

-- Fourth problem test suite
problem4TestSuite :: TestTree
problem4TestSuite =
  testGroup "Fourth problem" [lengthOfIntegerList, lengthOfString]

lengthOfIntegerList =
  testCase "Length of [123, 456, 789] is 3" $
  assertEqual [] 3 (problem4 [123, 456, 789])

lengthOfString =
  testCase "Length of 'Hello, world!' is 13" $
  assertEqual [] 13 (problem4 "Hello, world!")

-- Fifth problem test suite
problem5TestSuite :: TestTree
problem5TestSuite =
  testGroup "Fifth problem" [reverseIntegerList, reverseString]

reverseIntegerList =
  testCase "Reverse of [1,2,3,4] is [4,3,2,1]" $
  assertEqual [] [4, 3, 2, 1] (problem5 [1, 2, 3, 4])

reverseString =
  testCase
    "Reverse of 'A man, a plan, a canal, panama!' is '!amanap ,lanac a ,nalp a ,nam A'" $
  assertEqual
    []
    "!amanap ,lanac a ,nalp a ,nam A"
    (problem5 "A man, a plan, a canal, panama!")

-- Sixth problem test suite
problem6TestSuite :: TestTree
problem6TestSuite =
  testGroup
    "Sixth problem"
    [isIntegerListPalindrome, isStringPalindrome, isBigIntegerListPalindrome]

isIntegerListPalindrome =
  testCase "[1,2,3] is not a palindrome" $
  assertEqual [] False (problem6 [1, 2, 3])

isStringPalindrome =
  testCase "'madamimadam' is a palindrome" $
  assertEqual [] True (problem6 "madamimadam")

isBigIntegerListPalindrome =
  testCase "[1,2,4,8,16,8,4,2,1] is a palindrome" $
  assertEqual [] True (problem6 [1, 2, 4, 8, 16, 8, 4, 2, 1])

-- Seventh problem test suite
problem7TestSuite :: TestTree
problem7TestSuite =
  testGroup
    "Seventh problem"
    [flattenListWithOneElement, flattenList, flattenEmptyList]

flattenListWithOneElement =
  testCase "(Elem 5) flattened is [5]" $ assertEqual [] [5] (problem7 (Elem 5))

flattenList =
  testCase
    "(List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) flattened is [1,2,3,4,5]" $
  assertEqual
    []
    [1, 2, 3, 4, 5]
    (problem7 (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]))

flattenEmptyList =
  testCase "(List []) flattened is []" $
  assertEqual [] ([] :: [Int]) (problem7 (List []))

-- Eigth problem test suite
problem8TestSuite :: TestTree
problem8TestSuite = testGroup "Eigth problem" [compressString]

compressString =
  testCase "'aaaabccaadeeee' compressed is 'abcade'" $
  assertEqual [] "abcade" (problem8 "aaaabccaadeeee")

-- Ninth problem test suite
problem9TestSuite :: TestTree
problem9TestSuite = testGroup "Ninth problem" [packCharList]

packCharList =
  testCase
    "['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] packed is ['aaaa','b','cc','aa','d','eeee']" $
  assertEqual
    []
    ["aaaa", "b", "cc", "aa", "d", "eeee"]
    (problem9
       ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'])

-- Tenth problem test suite
problem10TestSuite :: TestTree
problem10TestSuite = testGroup "Tenth problem" [encodeString]

encodeString =
  testCase "'aaaabccaadeeee' encoded is [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]" $
  assertEqual [] [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')] (problem10 "aaaabccaadeeee")
