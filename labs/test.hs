module Main(main)where

import Atbash
import Caesar
import  Rot13

main :: IO()
main = do
        putStrLn "\n- Test Atbash Cipher"
        putStrLn $ "-- Encrypt Upper Cases\n" ++ Atbash.encrypt "HELLO WORLD" ++ "\n-- Encrypt Lower Cases\n" ++ Atbash.encrypt "hello world"
        putStrLn $ "-- Decrypt Upper Cases\n" ++ Atbash.decrypt "SVOOL DLIOW" ++ "\nD-- ecrypt Lower Cases\n" ++ Atbash.decrypt "svool dliow"
        putStrLn "\n- Test Caesar Cipher"
        putStrLn $ "-- Encrypt Upper Cases\n" ++ Caesar.encrypt 1 "HELLO WORLD" ++ "\n-- Encrypt Lower Cases\n" ++ Caesar.encrypt 1 "hello world"
        putStrLn $ "-- Decrypt Upper Cases\n" ++ Caesar.decrypt 1 "IFMMP XPSME" ++ "\n-- Decrypt Lower Cases\n" ++ Caesar.decrypt 1 "ifmmp xpsme"
        putStrLn "\n- Test Rot13 Cipher"
        putStrLn $ "-- Encrypt Upper Cases\n" ++ Rot13.encrypt "HELLO WORLD" ++ "\n-- Encrypt Lower Cases\n" ++ Rot13.encrypt "hello world"
        putStrLn $ "-- Decrypt Upper Cases\n" ++ Rot13.decrypt "URYYB JBEYQ" ++ "\n-- Decrypt Lower Cases\n" ++ Rot13.decrypt "uryyb jbeyq"