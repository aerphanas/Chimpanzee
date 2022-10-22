module Main(main)where

import Atbash
import Caesar
import Rot13
import Affine

main :: IO()
main = let
          affineA = 5
          affineB = 8
          text1 = "HELLO WOLRD"
          text2 = "hello world"
        in do
          -- Uppercase
          putStrLn "start testing uppercases chiper"
          putStrLn "\n- Test Atbash Cipher"
          putStrLn $ "-- Encrypted Upper Cases : " ++ Atbash.encrypt text1
          putStrLn $ "-- Decrypted Upper Cases : " ++ Atbash.decrypt (Atbash.encrypt text1)
          putStrLn "\n- Test Caesar Cipher"
          putStrLn $ "-- Encrypted Upper Cases : " ++ Caesar.encrypt 1 text1
          putStrLn $ "-- Decrypted Upper Cases : " ++ Caesar.decrypt 1 (Caesar.encrypt 1 text1)
          putStrLn "\n- Test Rot13 Cipher"
          putStrLn $ "-- Encrypted Upper Cases : " ++ Rot13.encrypt text1
          putStrLn $ "-- Decrypted Upper Cases : " ++ Rot13.decrypt (Rot13.encrypt text1)
          putStrLn "\n- Test Affine Cipher"
          putStrLn $ "-- Encrypted Upper Cases : " ++ Affine.encrypt affineA affineB text1
          putStrLn $ "-- Decrypted Upper Cases : " ++ Affine.decrypt affineA affineB (Affine.encrypt affineA affineB text1)
          putStrLn "End Of testing uppercases chiper"
          --- Lowercase
          putStrLn "start testing lowercases chiper"
          putStrLn "\n- Test Atbash Cipher"
          putStrLn $ "-- Encrypted lower Cases : " ++ Atbash.encrypt text2
          putStrLn $ "-- Decrypted lower Cases : " ++ Atbash.decrypt (Atbash.encrypt text2)
          putStrLn "\n- Test Caesar Cipher"
          putStrLn $ "-- Encrypted lower Cases : " ++ Caesar.encrypt 1 text2
          putStrLn $ "-- Decrypted lower Cases : " ++ Caesar.decrypt 1 (Caesar.encrypt 1 text2)
          putStrLn "\n- Test Rot13 Cipher"
          putStrLn $ "-- Encrypted lower Cases : " ++ Rot13.encrypt text2
          putStrLn $ "-- Decrypted lower Cases : " ++ Rot13.decrypt (Rot13.encrypt text2)
          putStrLn "\n- Test Affine Cipher"
          putStrLn $ "-- Encrypted lower Cases : " ++ Affine.encrypt affineA affineB text2
          putStrLn $ "-- Decrypted lower Cases : " ++ Affine.decrypt affineA affineB (Affine.encrypt affineA affineB text2)
          putStrLn "End Of testing lowercases chiper"
