module PartFour where

import PartOne

-- Determine whether a given integer number is prime.
problem31 :: Integral a => a -> Bool
problem31 x
  | x < 2 = False
  | x <= 3 = True
  | mod x 2 == 0 = False
  | mod x 3 == 0 = False
  | otherwise = calc 5
  where
    calc i
      | (i * i) > x = True
      | mod x i == 0 = False
      | mod x (i + 2) == 0 = False
      | otherwise = calc $ i + 6

-- Determine the greatest common divisor of two positive integer numbers. Use Euclid's algorithm.
problem32 :: Integer -> Integer -> Integer
problem32 x y
  | y == 0 = abs x
  | otherwise = problem32 y $ mod x y

-- Determine whether two positive integer numbers are coprime. Two numbers are coprime if their greatest common divisor equals 1.
problem33 :: Integer -> Integer -> Bool
problem33 x y = gcd x y == 1

-- Calculate Euler's totient function phi(m).
problem34 :: Integer -> Integer
problem34 1 = 1
problem34 x = sum $ map func [1..x-1]
  where
    func y
      | problem33 x y = 1
      | otherwise = 0 

problem34' :: Integer -> Int
problem34' 1 = 1
problem34' x = length $ filter (problem33 x) [1..x-1]

-- Determine the prime factors of a given positive integer. Construct a flat list containing the prime factors in ascending order.
problem35 :: Integer -> [Integer]
problem35 n = problem32' [n]
  where
    problem32' (x:xs)
      | problem31 x = xs ++ [x]
      | mod x 2 == 0 = problem32' $ (div x 2) : xs ++ [2]
      | mod x 3 == 0 = problem32' $ (div x 3) : xs ++ [3]
      | mod x 5 == 0 = problem32' $ (div x 5) : xs ++ [5]
      | mod x 7 == 0 = problem32' $ (div x 7) : xs ++ [7]
      | otherwise = error "What happened?"

-- Determine the prime factors of a given positive integer.
problem36 :: Integer -> [(Integer, Int)]
problem36 n = map swap $ problem10 $ problem35 n
  where
    swap (x, y) = (y, x)

-- Calculate Euler's totient function phi(m) (improved).
problem37 = error "Not implemented!"

-- Compare the two methods of calculating Euler's totient function.
problem38 = error "Not implemented!"

-- A list of prime numbers.
problem39 = error "Not implemented!"

-- Goldbach's conjecture.
problem40 = error "Not implemented!"

-- Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition. 
problem41 = error "Not implemented!"
