# Chimpanzee

[![Haskell CI](https://github.com/aerphanas/Chimpanzee/actions/workflows/haskell.yml/badge.svg)](https://github.com/aerphanas/Chimpanzee/actions/workflows/haskell.yml)
[![License](https://img.shields.io/badge/License-BSD--3--Clause-important)](https://github.com/DevCapacitor/aerphanas/blob/main/LICENSE)
![Haskell Language](https://img.shields.io/badge/Haskell-Haskell2010-informational)
![Cabal](https://img.shields.io/badge/Cabal-3.6-informational)
![GHC](https://img.shields.io/badge/GHC-9.2.4-informational)
![Version](https://img.shields.io/badge/Chimpanzee-1.0.2-informational)

## Table of contents

- [Chimpanzee](#chimpanzee)
  - [Description](#description)
  - [Cryptography](#cryptography)
    - [Classic cryptography](#classic-cryptography)
      - [Atbash](#atbash)
      - [Caesar](#caesar)
      - [Rot13](#rot13)
      - [Affine](#affine)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
    - [Build](#build)
    - [Test](#test)
  - [References](#references)

## Description

This project aims to implement an algorithm that can be used for anything, this project is licensed bsd 3 clauses

---

## Cryptography

cryptography is the process of changing sentences to make them unreadable and vice versa, at first cryptography was used in military affairs and intended to hide information so that the enemy could not read it, the word cryptography in the Romanization of Greek is kryptós which means "hidden, secret"; and graphein which means "to write", or -λογία -logia which means "study".

### Classic cryptography

classical era starting from 1900 BC, found a cryptography in a tomb in the Old Kingdom of Egypt circa, but not used for communication purposes, then in 1500 BC, found a simple substitution, then cryptography starts between 600 BC to 500 BC

#### Atbash

Atbash is a monoalphabetic substitution cipher, Atbash has the initial goal of encrypting the Hebrew alphabet, this is an example of the application of the Atbash cipher in Latin letters:

|Plain |A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|Cipher|Z|Y|X|W|V|U|T|S|R|Q|P|O|N|M|L|K|J|I|H|G|F|E|D|C|B|A|

because there is no key so Atbash has less security

#### Caesar

Caesar or commonly known as shift cipher is one of the simplest and most widely known ciphers, Caesar cipher is a substitution type for example: if we give 'A' to caesar cipher and give the number 5 as shift then caesar cipher will give the letter 'F', this is full table:

|Plain |A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|Cipher|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|E|D|C|B|A|

if we have the word "floss jos" and have shift 5 it will be "kqtxx otx"

#### Rot13

Rot13 stands for "rotate by 13 places" This cipher has characteristics like Caesar cipher, but this cipher only inputs one input without shift, because in this cipher it immediately shifts to 13, here is the ROT13 encryption table:

|Plain |A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|Cipher|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|A|B|C|D|E|F|G|H|i|J|K|L|M|

### Affine

affine is a cipher of the type [monoalphabetic substitution cipher](https://en.wikipedia.org/wiki/Substitution_cipher), where numbers are changed or encrypted using mathematical formulas/functions and changed back with mathematical formulas/functions, which means that the encrypted letters are basically substitution letters, it has the disadvantage of all substitution passwords. Each letter uses the function Fx = (a * x + b) mod 26 where b is the number of shifts, therefore the name of this cipher may be inspired by [Affine transformation](https://en.wikipedia.org/wiki/Affine_transformation), if we use 5 as 'a' and 8 as 'b' then the Affine encryption table is :

|Plain |A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|Cipher|I|N|S|X|C|H|M|R|W|B|G|L|Q|V|A|F|K|P|U|Z|E|J|O|T|Y|D|

---

## Prerequisites

to build this software, you must have:

|Package|Minimum Version|
|-|-|
|GHC|9.2.4|
|Cabal|3.6|

---

## Setup

for now if you want to use this library you can clone the repo using the command :

```sh
git clone https://github.com/DevCapacitor/Chimpanzee.git
```

and build Library with command

### Build

```sh
cabal build
```

(optional) if you want to do a test, use the command

### Test

```sh
cabal run test
```
---

## References

- [Wikipedia](https://www.wikipedia.org)
- [Crypto Corner](https://crypto.interactive-maths.com/)
