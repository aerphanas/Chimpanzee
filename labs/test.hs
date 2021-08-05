module Main(main) where

import qualified Data.Text as DT

main::IO()
main = putStrLn $ charTrim "tsrt trs"

charTrim::String -> String
charTrim = DT.unpack . DT.strip . DT.pack