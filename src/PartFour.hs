module PartFour where

-- Determine whether a given integer number is prime.
problem31 :: Integral a => a -> Bool
problem31 _ = True

-- Determine the greatest common divisor of two positive integer numbers. Use Euclid's algorithm.
problem32 :: Integer -> Integer -> Integer
problem32 x y
  | y == 0 = abs x
  | otherwise = problem32 y $ mod x y

-- Determine whether two positive integer numbers are coprime. Two numbers are coprime if their greatest common divisor equals 1.
problem33 :: Integer -> Integer -> Bool
problem33 x y = gcd x y == 1

-- Calculate Euler's totient function phi(m).
problem34 = error "Not implemented!"

-- Determine the prime factors of a given positive integer. Construct a flat list containing the prime factors in ascending order.
problem35 = error "Not implemented!"

-- Determine the prime factors of a given positive integer.
problem36 = error "Not implemented!"

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
