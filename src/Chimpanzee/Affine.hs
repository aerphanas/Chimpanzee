module Chimpanzee.Affine (encrypt, decrypt) where

import qualified Data.Char as DC -- chr, ord, isAlpha, isUpper
import qualified Data.List as DL -- head, filter

encrypt::Int -> Int -> [Char] -> [Char]
encrypt a b = map (DC.chr . doEncAlg a b . DC.ord)

decrypt::Int -> Int -> [Char] -> [Char]
decrypt a b = map (DC.chr . doDecAlg a b . DC.ord)


-- doMath is affine algorithm but first we need to convert
-- from key code to which alphabet in order 0 to 26 but first
-- need to know is it uppercase or lowercase with initChar
-- initChar will asign 65 if it uppercace and 97 if lowercase
-- after know all of that we can doMath and after that we need
-- convert back to key code just add initChar to doMath
doEncAlg::Int -> Int -> Int -> Int
doEncAlg a b x
    | DC.isAlpha . DC.chr $ x = doMath + initChar
    | otherwise               = x -- pattern matching to everything except alphabet will be return itself
    where
        initChar = if DC.isUpper $ DC.chr x then 65 else 97
        numChar  = x - initChar
        doMath   = (a * numChar + b) `mod` 26

-- same with doEncAlg but we need to find a inverse so we need
-- head and filter from module Data.List
doDecAlg::Int -> Int -> Int -> Int
doDecAlg a b x
    | DC.isAlpha . DC.chr $ x = doMath + initChar
    | otherwise               = x
    where
        aInv = DL.head $ DL.filter (\x -> ((a*x) `mod` 26)==1) [0..26]
        initChar = if DC.isUpper $ DC.chr x then 65 else 97
        numChar  = x - initChar
        doMath   = aInv * (numChar - b) `mod` 26
