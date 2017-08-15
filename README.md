# H-99
[Ninety-Nine Haskell Problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems)

# The problems

## Questions 1 to 10: Lists
- [x] 1. Find the last element of a list.
- [x] 2. Find the last but one element of a list.
- [x] 3. Find the K'th element of a list. The first element in the list is number 1.
- [x] 4. Find the number of elements of a list.
- [x] 5. Reverse a list.
- [x] 6. Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
- [x] 7. Flatten a nested list structure. Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
- [x] 8. Eliminate consecutive duplicates of list elements. If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
- [x] 9. Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
- [x] 10. Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

## Questions 11 to 20: Lists, continued
- [x] 11. Modified run-length encoding. Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
- [x] 12. Decode a run-length encoded list. Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.
- [x] 13. Run-length encoding of a list (direct solution). Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.
- [x] 14. Duplicate the elements of a list.
- [x] 15. Replicate the elements of a list a given number of times.
- [ ] 16. Drop every N'th element from a list.
- [ ] 17. Split a list into two parts; the length of the first part is given. Do not use any predefined predicates.
- [ ] 18. Extract a slice from a list. Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.
- [ ] 19. Rotate a list N places to the left. Hint: Use the predefined functions length and (++).
- [ ] 20. Remove the K'th element from a list.

## Questions 21 to 28: Lists again
- [ ] 21. Insert an element at a given position into a list.
- [ ] 22. Create a list containing all integers within a given range.
- [ ] 23. Extract a given number of randomly selected elements from a list.
- [ ] 24. Lotto: Draw N different random numbers from the set 1..M.
- [ ] 25. Generate a random permutation of the elements of a list.
- [ ] 26. Generate the combinations of K distinct objects chosen from the N elements of a list. In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure mathematicians, this result may be great. But we want to really generate all the possibilities in a list.
- [ ] 27. Group the elements of a set into disjoint subsets.
- [ ] 27. a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.
- [ ] 27. b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.
- [ ] 28. Sorting a list of lists according to length of sublists
- [ ] 28. a) We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.
- [ ] 28. b) Again, we suppose that a list contains elements that are lists themselves. But this time the objective is to sort the elements of this list according to their length frequency; i.e., in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.

## Questions 31 to 41: Arithmetic
- [x] 31. Determine whether a given integer number is prime.
- [x] 32. Determine the greatest common divisor of two positive integer numbers. Use Euclid's algorithm.
- [x] 33. Determine whether two positive integer numbers are coprime. Two numbers are coprime if their greatest common divisor equals 1.
- [x] 34. Calculate Euler's totient function phi(m). Euler's so-called totient function phi(m) is defined as the number of positive integers r (1 <= r < m) that are coprime to m.
- [x] 35. Determine the prime factors of a given positive integer. Construct a flat list containing the prime factors in ascending order.
- [x] 36. Determine the prime factors of a given positive integer. Construct a list containing the prime factors and their multiplicity.
- [x] 37. Calculate Euler's totient function phi(m) (improved). See problem 34 for the definition of Euler's totient function. If the list of the prime factors of a number m is known in the form of problem 36 then the function phi(m) can be efficiently calculated as follows: Let ((p1 m1) (p2 m2) (p3 m3) ...) be the list of prime factors (and their multiplicities) of a given number m. Then phi(m) can be calculated with the following formula:
```
phi(m) = (p1 - 1) * p1 ** (m1 - 1) *
         (p2 - 1) * p2 ** (m2 - 1) *
         (p3 - 1) * p3 ** (m3 - 1) * ...
```
- [x] 38. Compare the two methods of calculating Euler's totient function. Use the solutions of problems 34 and 37 to compare the algorithms. Take the number of reductions as a measure for efficiency. Try to calculate phi(10090) as an example. (no solution required)
- [x] 39. A list of prime numbers. Given a range of integers by its lower and upper limit, construct a list of all prime numbers in that range.
- [x] 40. Goldbach's conjecture. Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers. Example: 28 = 5 + 23. It is one of the most famous facts in number theory that has not been proved to be correct in the general case. It has been numerically confirmed up to very large numbers (much larger than we can go with our Prolog system). Write a predicate to find the two prime numbers that sum up to a given even integer.
- [x] 41. Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition. In most cases, if an even number is written as the sum of two prime numbers, one of them is very small. Very rarely, the primes are both bigger than say 50. Try to find out how many such cases there are in the range 2..3000.

## Questions 46 to 50: Logic and codes
- [ ] 46. Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 (for logical equivalence) which succeed or fail according to the result of their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed. A logical expression in two variables can then be written as in the following example: and(or(A,B),nand(A,B)). Now, write a predicate table/3 which prints the truth table of a given logical expression in two variables.
- [ ] 47. Truth tables for logical expressions (2). Continue problem P46 by defining and/2, or/2, etc as being operators. This allows to write the logical expression in the more natural way, as in the example: A and (A or not B). Define operator precedence as usual; i.e. as in Java.
- [ ] 48. Truth tables for logical expressions (3). Generalize problem P47 in such a way that the logical expression may contain any number of logical variables. Define table/2 in a way that table(List,Expr) prints the truth table for the expression Expr, which contains the logical variables enumerated in List.
- [ ] 49. Gray codes. An n-bit Gray code is a sequence of n-bit strings constructed according to certain rules. Find out the construction rules and write a predicate with the following specification: `gray(N,C) :- C is the N-bit Gray code`. Can you apply the method of "result caching" in order to make the predicate more efficient, when it is to be used repeatedly?
- [ ] 50. Huffman codes. We suppose a set of symbols with their frequencies, given as a list of fr(S,F) terms. Example: [fr(a,45),fr(b,13),fr(c,12),fr(d,16),fr(e,9),fr(f,5)]. Our objective is to construct a list hc(S,C) terms, where C is the Huffman code word for the symbol S. In our example, the result could be Hs = [hc(a,'0'), hc(b,'101'), hc(c,'100'), hc(d,'111'), hc(e,'1101'), hc(f,'1100')] [hc(a,'01'),...etc.]. The task shall be performed by the predicate huffman/2 defined as follows: `huffman(Fs,Hs) :- Hs is the Huffman code table for the frequency table Fs`

## Questions 54A to 60: Binary trees
## Questions 61 to 69: Binary trees, continued
## Questions 70B to 73: Multiway trees
## Questions 80 to 89: Graphs
## Questions 90 to 94: Miscellaneous problems
## Questions 95 to 99: Miscellaneous problems, continued
