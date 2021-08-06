module Main(main)where

import Caesar (encrypt,decrypt)

main :: IO()
main = do
        putStrLn $ "\nEncrypt Upper Cases\n" ++ encrypt 1 "HELLO WORLD" ++ "\nEncrypt Lower Cases\n" ++ encrypt 1 "hello world"
        putStrLn "-------------------"
        putStrLn $ "Decrypt Upper Cases\n" ++ decrypt 1 "IFMMP XPSME" ++ "\nDecrypt Lower Cases\n" ++ decrypt 1 "ifmmp xpsme"