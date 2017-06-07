module PartOne where

-- Find the last element of a list. 
problem1 :: [x] -> x
problem1 [] = error "Empty list!"
problem1 [x] = x
problem1 (_:xs) = problem1 xs

-- Find the last but one element of a list. 
problem2 :: [x] -> x
problem2 [] = error "Empty list!"
problem2 [x] = x
problem2 (_:xs) = problem2 xs

-- Find the K'th element of a list. The first element in the list is number 1. 
problem3 = error "Not implemented!"

-- Find the number of elements of a list. 
problem4 = error "Not implemented!"

-- Reverse a list. 
problem5 = error "Not implemented!"

-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x). 
problem6 = error "Not implemented!"

-- Flatten a nested list structure. 
problem7 = error "Not implemented!"

-- Eliminate consecutive duplicates of list elements. 
problem8 = error "Not implemented!"

-- Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists. 
problem9 = error "Not implemented!"

-- Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E. 
problem10 = error "Not implemented!"
