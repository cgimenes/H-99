import Test.Tasty (defaultMain, testGroup, TestTree)
import PartOneTestSuite

main = defaultMain tests

tests :: TestTree
tests =
  testGroup
    "Haskell 99 problems tests"
    [partOneTestSuite]
