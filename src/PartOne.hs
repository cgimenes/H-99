module PartOne where

-- Find the last element of a list. 
problem1 :: [a] -> a
problem1 [] = error "Empty list"
problem1 [x] = x
problem1 (_:xs) = problem1 xs

-- Find the last but one element of a list. 
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
problem7 = error "Not implemented"

-- Eliminate consecutive duplicates of list elements. 
problem8 :: Eq a => [a] -> [a]
problem8 [] = []
problem8 (x:xs) = x : (problem8 $ dropWhile (== x) xs)

-- Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists. 
problem9 = error "Not implemented"

-- Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E. 
problem10 = error "Not implemented"
