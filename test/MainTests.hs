import PartFourTestSuite
import PartOneTestSuite
import PartThreeTestSuite
import PartTwoTestSuite
import Test.Tasty (TestTree, defaultMain, testGroup)

main = defaultMain tests

tests :: TestTree
tests =
  testGroup
    "Haskell 99 problems tests"
    [partOneTestSuite, partTwoTestSuite, partThreeTestSuite, partFourTestSuite]
