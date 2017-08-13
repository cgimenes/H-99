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
    , problem34TestSuite
    , problem35TestSuite
    , problem36TestSuite
    -- , problem37TestSuite
    -- , problem38TestSuite
    , problem39TestSuite
    , problem40TestSuite
    -- , problem41TestSuite
    ]

-- Thirty-first problem test suite
problem31TestSuite :: TestTree
problem31TestSuite = testGroup "Thirty-first problem" [primality]

primality =
  testCase "Primality" $
  assertEqual
    []
    [True, True, True, True, True, True, True, True, True, True, False]
    ([ problem31 2
     , problem31 3
     , problem31 5
     , problem31 7
     , problem31 11
     , problem31 13
     , problem31 17
     , problem31 19
     , problem31 23
     , problem31 29
     , problem31 35
     ])

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

-- Thirty-fourth problem test suite
problem34TestSuite :: TestTree
problem34TestSuite = testGroup "Thirty-fourth problem" [totient]

totient = testCase "Euler's totient" $ assertEqual [] 4 (problem34 10)

-- Thirty-fifth problem test suite
problem35TestSuite :: TestTree
problem35TestSuite = testGroup "Thirty-fifth problem" [integerFactorization]

integerFactorization =
  testCase "Integer factorization" $ assertEqual [] [3, 3, 5, 7] (problem35 315)

-- Thirty-sixth problem test suite
problem36TestSuite :: TestTree
problem36TestSuite = testGroup "Thirty-sixth problem" [integerFactorizationMult]

integerFactorizationMult =
  testCase "Integer factorization and their multiplicity" $
  assertEqual [] [(3, 2), (5, 1), (7, 1)] (problem36 315)

-- Thirty-ninth problem test suite
problem39TestSuite :: TestTree
problem39TestSuite = testGroup "Thirty-ninth problem" [primesBetweenInterval]

primesBetweenInterval =
  testCase "List of primes between interval" $
  assertEqual [] [11, 13, 17, 19] (problem39 10 20)

-- Forty problem test suite
problem40TestSuite :: TestTree
problem40TestSuite = testGroup "Forty problem" [goldbachConjecture]

goldbachConjecture =
  testCase "Goldbach's conjecture" $ assertEqual [] (5, 23) (problem40 28)
