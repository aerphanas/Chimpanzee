module Main(main)where

import Atbash (encrypt)

main :: IO()
main = putStrLn $ "\nEncrypt Upper Cases\n" ++ encrypt "HELLO WORLD" ++ "\nEncrypt Lower Cases\n" ++ encrypt "hello world"