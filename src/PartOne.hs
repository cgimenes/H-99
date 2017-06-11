module PartOne where

data NestedList a
  = Elem a
  | List [NestedList a]

-- Find the last element of a list.
problem1 :: [a] -> a
problem1 [] = error "Empty list"
problem1 [x] = x
problem1 (_:xs) = problem1 xs

-- Find the last but one element of a list.
-- This problem was not solved by me!
problem2 :: [a] -> a
problem2 [] = error "Empty list"
problem2 [x] = error "Too few elements"
problem2 (x:xs) =
  if length xs == 1
    then x
    else problem2 xs

-- Find the K'th element of a list. The first element in the list is number 1.
problem3 :: [a] -> Integer -> a
problem3 (x:_) 1 = x
problem3 (_:xs) k = problem3 xs (k - 1)
problem3 _ _ = error "Index out of bounds"

-- Find the number of elements of a list.
problem4 :: [a] -> Integer
problem4 [] = 0
problem4 (_:xs) = 1 + problem4 xs

-- Reverse a list.
problem5 :: [a] -> [a]
problem5 [] = []
problem5 (x:xs) = (problem5 xs) ++ [x]

-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
problem6 :: Eq a => [a] -> Bool
problem6 x = x == reverse x

-- Flatten a nested list structure.
-- This problem was not solved by me!
problem7 :: NestedList a -> [a]
problem7 (Elem x) = [x]
problem7 (List (x:xs)) = problem7 x ++ problem7 (List xs)
problem7 (List []) = []

problem7' :: NestedList a -> [a]
problem7' (Elem x) = [x]
problem7' (List xs) = foldr (++) [] $ map problem7' xs

-- Eliminate consecutive duplicates of list elements.
-- This problem was not solved by me!
problem8 :: Eq a => [a] -> [a]
problem8 [] = []
problem8 (x:xs) = x : (problem8 $ dropWhile (== x) xs)

problem8' :: Eq a => [a] -> [a]
problem8' x =
  foldr
    (\a b ->
       if a == (head b)
         then b
         else a : b)
    [last x]
    x

-- Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
-- This problem was not solved by me!
problem9 :: (Eq a) => [a] -> [[a]]
problem9 = foldr func []
  where
    func x [] = [[x]]
    func x (y:xs) =
      if x == (head y)
        then ((x : y) : xs)
        else ([x] : y : xs)

-- Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
problem10 :: Eq a => [a] -> [(Int, a)]
problem10 = (map func) . problem9
  where
    func x = (length x, head x)
