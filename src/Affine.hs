module Affine (encrypt, decrypt) where

import qualified Data.Char as DC
import qualified Data.List as DL

encrypt::Int -> Int -> [Char] -> [Char]
encrypt a b = map (DC.chr . doEncAlg a b . DC.ord)

decrypt::Int -> Int -> [Char] -> [Char]
decrypt a b = map (DC.chr . doDecAlg a b . DC.ord)

doEncAlg::Int -> Int -> Int -> Int
doEncAlg a b x
    | DC.isAlpha . DC.chr $ x = doMath + initChar
    | otherwise               = x
    where 
        initChar = if DC.isUpper $ DC.chr x then 65 else 97
        numChar  = x - initChar
        doMath   = (a * numChar + b) `mod` 26

doDecAlg::Int -> Int -> Int -> Int
doDecAlg a b x
    | DC.isAlpha . DC.chr $ x = doMath + initChar
    | otherwise               = x
    where
        aInv = DL.head $ DL.filter (\x -> ((a*x) `mod` 26)==1) [0..26]
        initChar = if DC.isUpper $ DC.chr x then 65 else 97
        numChar  = x - initChar
        doMath   = aInv * (numChar - b) `mod` 26 
