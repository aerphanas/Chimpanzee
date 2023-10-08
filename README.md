> Moved to Codeberg

# Chimpanzee

[![Haskell CI](https://github.com/aerphanas/Chimpanzee/actions/workflows/haskell.yml/badge.svg)](https://github.com/aerphanas/Chimpanzee/actions/workflows/haskell.yml)

## Table of contents

- [Description](#description)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
  - [Build](#build)
  - [Test](#test)
  - [Install](#install)
- [Example](#example)

## Description

This project aims to implement an algorithm that can be used for anything, this project is licensed bsd 3 clauses

## Prerequisites

to build this software, you must have:

|Package|Minimum Version|
|-|-|
|GHC|9.0.2|
|Cabal|3.8|

## Setup

for now if you want to use this library you can clone the repo using the command :

```sh
git clone https://github.com/DevCapacitor/Chimpanzee.git
```

### Build

```sh
cabal build
```

(optional) if you want to do a test, use the command

### Test

```sh
cabal run test
```

### Install

```sh
cabal install --lib
```

## Example

```sh
GHCi, version 9.0.2: https://www.haskell.org/ghc/  :? for help
Loaded GHCi configuration from /home/orpheus/.ghc/ghci.conf
ghci> import qualified Chimpanzee.Atbash as Atbash
ghci> Atbash.encrypt "Hello World"
"Svool Dliow"
```
