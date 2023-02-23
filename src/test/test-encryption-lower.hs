module Main(main) where

import System.Exit (exitFailure)
import Test.HUnit
    ( assertEqual, runTestTT, Counts(failures), Test(..) )

import qualified Chimpanzee.Atbash as Atbash
import qualified Chimpanzee.Caesar as Caesar
import qualified Chimpanzee.Rot13 as Rot13
import qualified Chimpanzee.Affine as Affine

caesarKey :: Int
caesarKey = 1

affineKeyA :: Int
affineKeyA = 5

affineKeyB :: Int
affineKeyB = 8

textTest :: String
textTest = "hello world"

testAtbashEncryption :: Test
testAtbashEncryption = TestCase (assertEqual "Encryption failed" "svool dliow" (Atbash.encrypt textTest))

testAtbashDecryption :: Test
testAtbashDecryption = TestCase (assertEqual "Decryption failed" textTest (Atbash.decrypt "svool dliow"))

testCaesarEncryption :: Test
testCaesarEncryption = TestCase (assertEqual "Encryption failed" "ifmmp xpsme" (Caesar.encrypt caesarKey textTest))

testCaesarDecryption :: Test
testCaesarDecryption = TestCase (assertEqual "Encryption failed" textTest (Caesar.decrypt caesarKey "ifmmp xpsme"))

testRot13Encryption :: Test
testRot13Encryption = TestCase (assertEqual "Encryption failed" "uryyb jbeyq" (Rot13.encrypt textTest))

testRot13Decryption :: Test
testRot13Decryption = TestCase (assertEqual "Encryption failed" textTest (Rot13.decrypt "uryyb jbeyq"))

testAffineEncryption :: Test
testAffineEncryption = TestCase (assertEqual "Encryption failed" "rclla oaplx" (Affine.encrypt affineKeyA affineKeyB textTest))

testAffineDecryption :: Test
testAffineDecryption = TestCase (assertEqual "Encryption failed" textTest (Affine.decrypt affineKeyA affineKeyB "rclla oaplx"))

tests :: Test
tests = TestList  [ TestLabel "Test Atbash Encryption" testAtbashEncryption
                  , TestLabel "Test Atbash Decryption" testAtbashDecryption
                  , TestLabel "Test Caesar Encryption" testCaesarEncryption
                  , TestLabel "Test Caesar Decryption" testCaesarDecryption
                  , TestLabel "Test Rot13  Encryption" testRot13Encryption
                  , TestLabel "Test Rot13  Decryption" testRot13Decryption
                  , TestLabel "Test Affine Encryption" testAffineEncryption
                  , TestLabel "Test Affine Decryption" testAffineDecryption
                  ]

main :: IO ()
main = do
  counts <- runTestTT tests
  if failures counts > 0
    then exitFailure
    else putStrLn "PASS"
