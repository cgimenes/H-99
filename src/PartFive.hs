module PartFive where

-- Logical equivalence predicates
not' :: Bool -> Bool
not' False = True
not' True = False

and' :: Bool -> Bool -> Bool
and' True True = True
and' _ _ = False

nand' :: Bool -> Bool -> Bool
nand' a b = not' $ and' a b

or' :: Bool -> Bool -> Bool
or' False False = False
or' _ _ = True

nor' :: Bool -> Bool -> Bool
nor' a b = not' $ or' a b

xor' :: Bool -> Bool -> Bool
xor' True False = True
xor' False True = True
xor' _ _ = False

impl' :: Bool -> Bool -> Bool
impl' a b = (not' a) `or'` b

equ' :: Bool -> Bool -> Bool
equ' True True = True
equ' False False = True
equ' _ _ = False

-- Helper predicates
powerset :: Int -> [a] -> [[a]]
powerset 0 _ = [[]]
powerset n domain = foldr func [] domain
  where
    func a xs = (map (\x -> a : x) $ powerset (n - 1) domain) ++ xs

-- Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 (for logical equivalence) which succeed or fail according to the result of their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed. A logical expression in two variables can then be written as in the following example: and(or(A,B),nand(A,B)). Now, write a predicate table/3 which prints the truth table of a given logical expression in two variables.
problem46 :: (Bool -> Bool -> Bool) -> [(Bool, Bool, Bool)]
problem46 e = [(a, b, r) | a <- domain, b <- domain, let r = e a b]
  where
    domain = [True, False]

-- Truth tables for logical expressions (2). Continue problem P46 by defining and/2, or/2, etc as being operators. This allows to write the logical expression in the more natural way, as in the example: A and (A or not B). Define operator precedence as usual; i.e. as in Java.
infixl 4 `or'`

infixl 4 `nor'`

infixl 5 `xor'`

infixl 6 `and'`

infixl 6 `nand'`

infixl 3 `equ'`

problem47 :: (Bool -> Bool -> Bool) -> [(Bool, Bool, Bool)]
problem47 = problem46

-- Truth tables for logical expressions (3). Generalize problem P47 in such a way that the logical expression may contain any number of logical variables. Define table/2 in a way that table(List,Expr) prints the truth table for the expression Expr, which contains the logical variables enumerated in List.
problem48 :: Int -> ([Bool] -> Bool) -> [([Bool], Bool)]
problem48 n f = map (\x -> (x, f x)) $ powerset n [True, False]

-- Gray codes. An n-bit Gray code is a sequence of n-bit strings constructed according to certain rules. Find out the construction rules and write a predicate with the following specification: `gray(N,C) :- C is the N-bit Gray code`. Can you apply the method of "result caching" in order to make the predicate more efficient, when it is to be used repeatedly?
problem49 = error "Not implemented yet"

-- Huffman codes. We suppose a set of symbols with their frequencies, given as a list of fr(S,F) terms. Example: [fr(a,45),fr(b,13),fr(c,12),fr(d,16),fr(e,9),fr(f,5)]. Our objective is to construct a list hc(S,C) terms, where C is the Huffman code word for the symbol S. In our example, the result could be Hs = [hc(a,'0'), hc(b,'101'), hc(c,'100'), hc(d,'111'), hc(e,'1101'), hc(f,'1100')] [hc(a,'01'),...etc.]. The task shall be performed by the predicate huffman/2 defined as follows: `huffman(Fs,Hs) :- Hs is the Huffman code table for the frequency table Fs`
problem50 = error "Not implemented yet"
