module PartFourTestSuite where

import PartFour
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

partFourTestSuite :: TestTree
partFourTestSuite =
  testGroup
    "Part Four"
    [ problem31TestSuite
    -- , problem32TestSuite
    -- , problem33TestSuite
    -- , problem34TestSuite
    -- , problem35TestSuite
    -- , problem36TestSuite
    -- , problem37TestSuite
    -- , problem38TestSuite
    -- , problem39TestSuite
    -- , problem40TestSuite
    -- , problem41TestSuite
    ]

-- First problem test suite
problem31TestSuite :: TestTree
problem31TestSuite =
  testGroup "Thirty-first problem" [isPrime]

isPrime =
  testCase "Is prime" $ assertEqual [] True (problem31 7)
