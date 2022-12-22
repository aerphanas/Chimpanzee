# Chimpanzee

[![Haskell CI](https://github.com/aerphanas/Chimpanzee/actions/workflows/haskell.yml/badge.svg)](https://github.com/aerphanas/Chimpanzee/actions/workflows/haskell.yml)
[![Lisensi](https://img.shields.io/badge/Lisensi-BSD--3--Clause-important)](https://github.com/aerphanas/Chimpanzee/blob/main/LICENSE)
![Haskell Language](https://img.shields.io/badge/Haskell-Haskell2010-informational)  ![Cabal](https://img.shields.io/badge/Cabal-3.6-informational)
![GHC](https://img.shields.io/badge/GHC-9.2.4-informational)
![Version](https://img.shields.io/badge/Chimpanzee-1.0.2-informational)

## Daftar isi

- [Chimpanzee](#chimpanzee)
  - [Deskripsi](#deskripsi)
  - [Syarat](#syarat)
  - [Setup](#setup)
    - [Build](#build)
    - [Test](#test)

## Deskripsi

Project ini bertujuan untuk mengimplementasikan sebuah algoritma yang dapat digunakan untuk apasaja, projek ini berlisensi bsd 3 clause

---

## Syarat

untuk build software ini, anda harus memiliki :

|Package|Minimum Version|
|-|-|
|GHC|9.2.4|
|Cabal|3.6|

---

## Setup

untuk saat ini jika ingin menggunakan Library ini anda bisa clone repo menggunakan command :

```sh
git clone https://github.com/DevCapacitor/Chimpanzee.git
```

dan membangun Library dengan command

### Build

```sh
cabal build
```

(opsional) jika ingin melakukan uji coba, gunakanlah command

### Test

```sh
cabal run test
```
