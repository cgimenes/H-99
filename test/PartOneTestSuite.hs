module PartOneTestSuite where

import PartOne
import Test.Tasty (testGroup, TestTree)
import Test.Tasty.HUnit (assertEqual, testCase)

partOneTestSuite :: TestTree
partOneTestSuite = testGroup "Part One" [problem1TestSuite, problem2TestSuite, problem3TestSuite, problem4TestSuite]

-- First problem tests
problem1TestSuite :: TestTree
problem1TestSuite = testGroup "First problem" [lastOfIntegerList, lastOfCharList]

lastOfIntegerList =
  testCase "Last of [1,2,3,4] is 4" $ assertEqual [] 4 (problem1 [1,2,3,4])

lastOfCharList =
  testCase "Last of ['x','y','z'] is 'z'" $ assertEqual [] 'z' (problem1 ['x','y','z'])

-- Second problem tests
problem2TestSuite :: TestTree
problem2TestSuite = testGroup "Second problem" [lastButOneOfIntegerList, lastButOneOfCharList]

lastButOneOfIntegerList =
  testCase "Last but one of [1,2,3,4] is 3" $ assertEqual [] 3 (problem2 [1,2,3,4])

lastButOneOfCharList =
  testCase "Last but one of 'a'..'z' is 'y'" $ assertEqual [] 'y' (problem2 ['x'..'z'])

-- Third problem tests
problem3TestSuite :: TestTree
problem3TestSuite = testGroup "Third problem" [elementAtOfIntegerList, elementAtOfString]

elementAtOfIntegerList =
  testCase "Element 2 of [1,2,3] is 2" $ assertEqual [] 2 (problem3 [1,2,3] 2)

elementAtOfString =
  testCase "Element 5 of 'haskell' is 'e'" $ assertEqual [] 'e' (problem3 "haskell" 5)

-- Fourth problem tests
problem4TestSuite :: TestTree
problem4TestSuite = testGroup "Fourth problem" [lengthOfIntegerList, lengthOfString]

lengthOfIntegerList =
  testCase "Length of [123, 456, 789] is 3" $ assertEqual [] 3 (problem4 [123, 456, 789])

lengthOfString =
  testCase "Length of 'Hello, world!' is 13" $ assertEqual [] 13 (problem4 "Hello, world!")
  