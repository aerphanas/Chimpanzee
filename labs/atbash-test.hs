module Main(main)where

import Atbash (encrypt,decrypt)

main :: IO()
main = do
        putStrLn $ "\nEncrypt Upper Cases\n" ++ encrypt "HELLO WORLD" ++ "\nEncrypt Lower Cases\n" ++ encrypt "hello world"
        putStrLn "-------------------"
        putStrLn $ "Decrypt Upper Cases\n" ++ decrypt "SVOOL DLIOW" ++ "\nDecrypt Lower Cases\n" ++ decrypt "svool dliow"