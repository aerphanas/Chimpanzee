module Caesar (encrypt,decrypt) where

import qualified Data.Char as DC -- chr, ord, isAlpha, isUpper

encrypt::Int -> [Char] -> [Char]
encrypt shift = map (DC.chr . doEncAlg shift . DC.ord)

decrypt::Int -> [Char] -> [Char]
decrypt shift = map (DC.chr . doDecAlg shift . DC.ord)

-- this function will check if the input is Integer of Char
-- if the input is not char this function wil return its value
-- if the input is alpha this funciton wil shift the value to
-- the given number
doEncAlg::Int -> Int -> Int
doEncAlg shift x
    | DC.isAlpha . DC.chr $ x = if checkOver then (x - 25) +  (shift - 1) else x + shift
    | otherwise               = x -- do algorithm only on alphabetic
    where 
        checkAlpha = if DC.isUpper . DC.chr $ x then 90 else 122
        checkOver  = (x + shift) > checkAlpha

-- this function works like doEncAlg, but do the opposite
doDecAlg::Int -> Int -> Int
doDecAlg shift x
    | DC.isAlpha . DC.chr $ x = if checkOver then (x + 25) -  (shift + 1) + 2 else x - shift
    | otherwise               = x -- do algorithm only on alphabetic
    where
        checkAlpha = if DC.isUpper . DC.chr $ x then 65 else 97
        checkOver  = (x - shift) < checkAlpha