module Main(main)where

import Rot13 (encrypt,decrypt)

main :: IO()
main = do
        putStrLn $ "\nEncrypt Upper Cases\n" ++ encrypt "HELLO WORLD" ++ "\nEncrypt Lower Cases\n" ++ encrypt "hello world"
        putStrLn "-------------------"
        putStrLn $ "Decrypt Upper Cases\n" ++ decrypt "URYYB JBEYQ" ++ "\nDecrypt Lower Cases\n" ++ decrypt "uryyb jbeyq"