import PartOneTestSuite
import PartFourTestSuite
import Test.Tasty (TestTree, defaultMain, testGroup)

main = defaultMain tests

tests :: TestTree
tests = testGroup "Haskell 99 problems tests" [partOneTestSuite, partFourTestSuite]
