module Rot13 (encrypt,decrypt) where

import qualified Data.Char as DC -- chr, ord, isAlpha, isUpper

encrypt::[Char] -> [Char]
encrypt = map (DC.chr . doEncAlg . DC.ord) -- convert Alphabet, do the encription algorithm and give the result

decrypt::[Char] -> [Char]
decrypt = map (DC.chr . doDecAlg . DC.ord) -- do the decryption algorithm

-- checking if alphabet is greater than number and do the calculation
-- if the number greater than z or 90 in uppercase and 122 in lowercase
-- the algorithm will be (number - 25) - (13 - 1) or else x + 13
doEncAlg::Int -> Int
doEncAlg x
    | DC.isAlpha . DC.chr $ x = if checkOver then (x - 25) +  (13 - 1) else x + 13
    | otherwise               = x -- do algorithm only on alphabetic
    where checkAlpha = if DC.isUpper . DC.chr $ x then 90 else 122
          checkOver  = (x + 13) > checkAlpha

-- the calculation is same as encryption but this time we do the opposite
-- if the number smaller than 'a' (97) and 'A' (65) letter, and do opposite calculation
-- the algorithm will be (number + 25) - (13 + 1) or else x - 13
doDecAlg::Int -> Int
doDecAlg x
    | DC.isAlpha . DC.chr $ x = if checkOver then (x + 25) -  (13 + 1) + 2 else x - 13
    | otherwise               = x -- do algorithm only on alphabetic
    where checkAlpha = if DC.isUpper . DC.chr $ x then 65 else 97
          checkOver  = (x - 13) < checkAlpha