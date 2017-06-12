module PartFourTestSuite where

import PartFour
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

partFourTestSuite :: TestTree
partFourTestSuite =
  testGroup
    "Part Four"
    [ problem31TestSuite
    , problem32TestSuite
    , problem33TestSuite
    -- , problem34TestSuite
    -- , problem35TestSuite
    -- , problem36TestSuite
    -- , problem37TestSuite
    -- , problem38TestSuite
    -- , problem39TestSuite
    -- , problem40TestSuite
    -- , problem41TestSuite
    ]

-- Thirty-first problem test suite
problem31TestSuite :: TestTree
problem31TestSuite = testGroup "Thirty-first problem" [primality]

primality = testCase "Primality" $ assertEqual [] True (problem31 7)

-- Thirty-second problem test suite
problem32TestSuite :: TestTree
problem32TestSuite = testGroup "Thirty-second problem" [greatestCommonDivisor]

greatestCommonDivisor =
  testCase "GreatestCommonDivisor" $
  assertEqual
    []
    [9, 3, 3]
    ([problem32 36 63, problem32 (-3) (-6), problem32 (-3) 6])

-- Thirty-third problem test suite
problem33TestSuite :: TestTree
problem33TestSuite = testGroup "Thirty-third problem" [coprime]

coprime = testCase "Coprime" $ assertEqual [] True (problem33 35 64)
