module PartThree where

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

-- Generate the combinations of K distinct objects chosen from the N elements of a list. In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure mathematicians, this result may be great. But we want to really generate all the possibilities in a list.
problem26 :: Int -> [a] -> [[a]]
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
-- a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.
-- b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.
problem27 = error "Not implemented yet!"

-- Sorting a list of lists according to length of sublists
-- a) We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.
-- b) Again, we suppose that a list contains elements that are lists themselves. But this time the objective is to sort the elements of this list according to their length frequency; i.e., in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.
problem28 = error "Not implemented yet!"
