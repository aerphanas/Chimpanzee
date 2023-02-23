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

textTestUpper :: String
textTestUpper = "HELLO WORLD"

textTestLower :: String
textTestLower = "hello world"

testAtbashEncryption :: Test
testAtbashEncryption = TestCase (assertEqual "Encryption failed" "SVOOL DLIOW" (Atbash.encrypt textTestUpper))

testAtbashDecryption :: Test
testAtbashDecryption = TestCase (assertEqual "Decryption failed" textTestUpper (Atbash.decrypt "SVOOL DLIOW"))

testCaesarEncryption :: Test
testCaesarEncryption = TestCase (assertEqual "Encryption failed" "IFMMP XPSME" (Caesar.encrypt caesarKey textTestUpper))

testCaesarDecryption :: Test
testCaesarDecryption = TestCase (assertEqual "Encryption failed" textTestUpper (Caesar.decrypt caesarKey "IFMMP XPSME"))

testRot13Encryption :: Test
testRot13Encryption = TestCase (assertEqual "Encryption failed" "URYYB JBEYQ" (Rot13.encrypt textTestUpper))

testRot13Decryption :: Test
testRot13Decryption = TestCase (assertEqual "Encryption failed" textTestUpper (Rot13.decrypt "URYYB JBEYQ"))

testAffineEncryption :: Test
testAffineEncryption = TestCase (assertEqual "Encryption failed" "RCLLA OAPLX" (Affine.encrypt affineKeyA affineKeyB textTestUpper))

testAffineDecryption :: Test
testAffineDecryption = TestCase (assertEqual "Encryption failed" textTestUpper (Affine.decrypt affineKeyA affineKeyB "RCLLA OAPLX"))

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
