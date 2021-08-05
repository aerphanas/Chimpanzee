-- //TODO create a decryption algorithm for atbash cipher
module Atbash (encrypt,decrypt) where

import qualified Data.Char as DC
import qualified Data.List as DL

encrypt :: [Char] -> [Char]
encrypt = map ( DC.chr . doAlg . DC.ord)
-- here I change letters to numbers to make it easier for us to make algorithms
-- after doing the encryption I change the numbers back to letters

decrypt :: [Char] -> [Char]
decrypt = encrypt
-- because of Algorithm we dont need to find the algorithm for decryption

doAlg :: Int -> Int
doAlg 32 = 32
doAlg x = x + 26 - (x - checkAlpha ) - (x - checkAlpha) - 1
        where checkAlpha =  if DC.isUpper (DC.chr x ) then 65 else 97
        -- we need a check to get the initial value
        -- what the algorithm needs, the uppercase value is 65
        -- while lowercase is 97