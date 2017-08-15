module PartTwo where

import PartOne

data ListItem a
  = Single a
  | Multiple Int
             a
  deriving (Show, Eq)

encodeElement :: Eq a => (Int, a) -> ListItem a
encodeElement (a, b) =
  if a == 1
    then Single b
    else Multiple a b

encodeElement' :: Eq a => (Int, a) -> ListItem a
encodeElement' (1, x) = Single x
encodeElement' (n, x) = Multiple n x

-- Modified run-length encoding. Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
problem11 :: Eq a => [a] -> [ListItem a]
problem11 = (map encodeElement) . problem10

problem11' :: Eq a => [a] -> [ListItem a]
problem11' = (map encodeElement') . problem10

-- Decode a run-length encoded list. Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.
problem12 :: Eq a => [ListItem a] -> [a]
problem12 = foldr ((++) . decoder) []
  where
    decoder (Single a) = [a]
    decoder (Multiple n a) = replicate n a

problem12' :: Eq a => [ListItem a] -> [a]
problem12' = concatMap decoder
  where
    decoder (Single x) = [x]
    decoder (Multiple n x) = replicate n x

-- Run-length encoding of a list (direct solution). Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.
problem13 :: Eq a => [a] -> [ListItem a]
problem13 = (map encodeElement) . foldr func []
  where
    func x [] = [(1, x)]
    func x (y@(n, a):xs) =
      if x == a
        then (succ $ n, x) : xs
        else (1, x) : y : xs

problem13' :: Eq a => [a] -> [ListItem a]
problem13' [] = []
problem13' (x:xs)
  | count == 1 = (Single x) : (problem13' xs)
  | otherwise = (Multiple count x) : (problem13' rest)
  where
    (matched, rest) = span (== x) xs
    count = 1 + (length matched)

-- Duplicate the elements of a list.
problem14 :: [a] -> [a]
problem14 = concatMap (\x -> replicate 2 x)

-- Replicate the elements of a list a given number of times.
problem15 = error "Not implemented yet!"

-- Drop every N'th element from a list.
problem16 = error "Not implemented yet!"

-- Split a list into two parts; the length of the first part is given. Do not use any predefined predicates.
problem17 = error "Not implemented yet!"

-- Extract a slice from a list. Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.
problem18 = error "Not implemented yet!"

-- Rotate a list N places to the left. Hint: Use the predefined functions length and (++).
problem19 = error "Not implemented yet!"

-- Remove the K'th element from a list.
problem20 = error "Not implemented yet!"
