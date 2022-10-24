# Chimpanzee

[![Haskell CI](https://github.com/aerphanas/Chimpanzee/actions/workflows/haskell.yml/badge.svg)](https://github.com/aerphanas/Chimpanzee/actions/workflows/haskell.yml)
[![Lisensi](https://img.shields.io/badge/Lisensi-BSD--3--Clause-important)](https://github.com/aerphanas/Chimpanzee/blob/main/LICENSE)
![Haskell Language](https://img.shields.io/badge/Haskell-Haskell2010-informational)  ![Cabal](https://img.shields.io/badge/Cabal-3.6-informational)
![GHC](https://img.shields.io/badge/GHC-9.2.4-informational)
![Version](https://img.shields.io/badge/Chimpanzee-1.0.2-informational)

## Daftar isi

- [Chimpanzee](#chimpanzee)
  - [Deskripsi](#deskripsi)
  - [Kriptografi](#kriptografi)
    - [Era Kelasik](#era-kelasik)
      - [Atbash](#atbash)
      - [Caesar](#caesar)
      - [Rot13](#rot13)
      - [Affine](#affine)
  - [Syarat](#syarat)
  - [Setup](#setup)
    - [Build](#build)
    - [Test](#test)
  - [Referensi](#referensi)

## Deskripsi

Project ini bertujuan untuk mengimplementasikan sebuah algoritma yang dapat digunakan untuk apasaja, projek ini berlisensi bsd 3 clause

---

## Kriptografi

kriptografi adalah proses mengubah kalimat agar tidak dapat dibaca dan sebaliknya, pada awalnya kriptografi digunakan dalam urusan militer dan ditujukan untuk menyembunykan informasi agar musuh tidak dapat membacanya, kata cryptography dalam Romanization of Greek yaitu kryptós yanp memiliki arti "hidden, secret"; and γράφειν graphein yang memiliki arti "to write", atau -λογία -logia yang memiliki arti "study".

## Era Klasik

kelasik era di mulai dari 1900 BC, ditemukan sebuah kriptografi di sebuah makam di the Old Kingdom of Egypt circa, namun tidak digunakan untuk tujuan komunikasi, barulah pada 1500 BC, ditemukan sebuah substitusi simpel, maka cryptografi dimulai antara 600 BC sampai 500 BC

#### Atbash

Atbash adalah cipher yang berjenis monoalphabetic substitution, Atbash memiliki tujuan awal untuk meng enskripsi Hebrew alphabet, beginilah contoh penerapan Atbash cipher dalam huruf latin :

|Plain |A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|Cipher|Z|Y|X|W|V|U|T|S|R|Q|P|O|N|M|L|K|J|I|H|G|F|E|D|C|B|A|

karena tidak adanya sebuah kunci jadi Atbash memiliki keamanan yang kurang

#### Caesar

Caesar atau biasa dikenal shift cipher adalah salah satu cipher yang simpel dan paling banyak dikenal, Caesar cipher adalah tipe substitusi contohnya : jika kita memberikan 'A' pada caesar cipher dan memberikan angka 5 sebagai shift maka caesar cipher akan memberikan huruf 'F', inilah tabel lengkapnya :

|Plain |A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|Cipher|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|E|D|C|B|A|

jika kita memiliki kata "floss jos" dan meiliki shift 5 maka akan menjadi "kqtxx otx"

#### Rot13

Rot13 kepanjangan dari "rotate by 13 places" cipher ini memiliki karakteristik seperti Caesar cipher namun cipher ini hanya menginput satu input tanpa shift, karna di cipher ini langsung mengshift ke 13, ini dia tabel enskripsi ROT13 :

|Plain |A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|Cipher|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|A|B|C|D|E|F|G|H|i|J|K|L|M|

### Affine

affine adalah cipher yang bertipe [monoalphabetic substitution cipher](https://en.wikipedia.org/wiki/Substitution_cipher), dimana angka-angka di ubah atau di enkripsi menggunakan rumus/fungsi matematika dan di ubah kembali dengan rumus/fungsi matematika, yang berarti huruf yang di enkripsi pada dasarnya adalah huruf substitusi, ia memiliki kelemahan dari semua sandi substitusi. Setiap huruf menggunakan fungsi Fx = (a * x + b) mod 26 dimana b adalah jumlah pergeseran, karna demikian nama cipher ini mungkin terinspirasi dari [Affine transformation](https://en.wikipedia.org/wiki/Affine_transformation), bila kita menggunakan 5 sebagai 'a' dan 8 sebagai 'b' maka tabel enkripsi Affine adalah :

|Plain |A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
|------|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|Cipher|I|N|S|X|C|H|M|R|W|B|G|L|Q|V|A|F|K|P|U|Z|E|J|O|T|Y|D|

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
---
## Referensi

- [Wikipedia](https://www.wikipedia.org/)
- [Crypto Corner](https://crypto.interactive-maths.com/)
