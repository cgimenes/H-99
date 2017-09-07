module PartThree where

import Data.Function
import Data.List
import Data.Ord (comparing)

-- Helper predicates
groupBy' :: (a -> a -> Bool) -> [a] -> [[a]]
groupBy' eq l = foldr group' [] l
  where
    group' e [] = [[e]]
    group' e (x:xs) =
      if eq e $ head x
        then ([e] ++ x) : xs
        else (group' e xs) ++ [x]

-- Insert an element at a given position into a list.
problem21 :: a -> [a] -> Int -> [a]
problem21 x xs i = take index xs ++ [x] ++ drop index xs
  where
    index = (i - 1)

problem21' :: a -> [a] -> Int -> [a]
problem21' x xs i = first ++ x : second
  where
    (first, second) = splitAt (i - 1) xs

-- Create a list containing all integers within a given range.
problem22 :: Int -> Int -> [Int]
problem22 n m = [n .. m]

problem22' :: Int -> Int -> [Int]
problem22' n m
  | n == m = [n]
  | n < m = n : (problem22' (n + 1) m)
  | n > m = n : (problem22' (n - 1) m)

-- Extract a given number of randomly selected elements from a list.
problem23 = error "Not implemented yet!"

-- Lotto: Draw N different random numbers from the set 1..M.
problem24 = error "Not implemented yet!"

-- Generate a random permutation of the elements of a list.
problem25 = error "Not implemented yet!"

-- Generate the combinations of K distinct objects chosen from the N elements of a list.
problem26 :: Int -> [a] -> [[a]]
problem26 _ [] = []
problem26 k l@(x:xs)
  | k == 0 = []
  | k == length l = [l]
  | k == 1 = [x] : problem26 k xs
  | otherwise = (map (\y -> x : y) $ problem26 (k - 1) xs) ++ problem26 k xs

problem26' :: Int -> [a] -> [[a]]
problem26' 0 _ = [[]]
problem26' n xs =
  [ xs !! i : x
  | i <- [0 .. (length xs) - 1]
  , x <- problem26' (n - 1) (drop (i + 1) xs)
  ]

problem26'' :: Int -> [a] -> [[a]]
problem26'' 0 _ = [[]]
problem26'' _ [] = []
problem26'' n (x:xs) =
  (map (x :) (problem26'' (n - 1) xs)) ++ (problem26'' n xs)

-- Group the elements of a set into disjoint subsets.
-- a) Generate all the possibilities and returns them in a list.
-- b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.
problem27 = error "Not implemented yet!"

-- Sorting a list of lists according to length of sublists
-- a) Sort the elements of this list according to their length.
problem28a :: [[a]] -> [[a]]
problem28a l
  | length l < 2 = l
  | otherwise = merge (problem28a fp) (problem28a sp)
  where
    (fp, sp) = splitAt index l
    index =
      if r == 0
        then d
        else d + 1
    (d, r) = quotRem (length l) 2
    merge [] b = b
    merge a [] = a
    merge a b
      | (length $ head a) > (length $ head b) = head b : (merge a $ tail b)
      | otherwise = head a : merge (tail a) b

problem28a' :: [[a]] -> [[a]]
problem28a' = sortOn length

problem28a'' :: [[a]] -> [[a]]
problem28a'' = sortBy (comparing length)

problem28a''' :: [[a]] -> [[a]]
problem28a''' = sortBy (compare `on` length)

-- b) Sort the elements of this list according to their length frequency.
problem28b :: [[a]] -> [[a]]
problem28b l = flatten $ problem28a $ groupBy' ((==) `on` length) l
  where
    flatten :: [[a]] -> [a]
    flatten = foldr (\x acc -> x ++ acc) []

problem28b' :: [[a]] -> [[a]]
problem28b' = concat . problem28a' . groupBy ((==) `on` length) . problem28a'
