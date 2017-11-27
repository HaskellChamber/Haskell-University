# Haskell-University
[![Join the chat at https://gitter.im/HaskellChamber/Haskell-University](https://badges.gitter.im/HaskellChamber/Haskell-University.svg)](https://gitter.im/HaskellChamber/Haskell-University?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Portfolio-based approach to learning Haskell

## New semster just started!

First edition of Haskell University just started! You can join by adding your name to the list of students with a link to the repository where you will push your solutions to the exercies.

| Student         | Repository                                                                  |
| --------------- | --------------------------------------------------------------------------- |
| Pawel Szulc     | [solutions](https://github.com/rabbitonweb/HaskellUniversity-semester1)     |
| Lukasz Byczynski| [solutions](https://github.com/LukaszByczynski/HaskellUniversity-semester1) |


| Exercise                                                                        | Deadline         |
| ------------------------------------------------------------------------------- | ----------------:|
| 1. [Hello World](#1-hello-world)                                                | 03 December 2017 |
| 2. Fun with lists                                                               | 10 December 2017 |
| 3. Apples and oranges                                                           | 17 December 2017 |
| 4. [Reverse Polish notation calculator](#4-reverse-polish-notation-calculator)  | 31 December 2017 |
| 5. [Advanced Calculator](#5-advanced-calculator)                                | 07 January  2018 |

## Exercises 

### 1. Hello World 

*deadline: 1 week*

We will cover:
1. How to init new Haskell project
2. using the `IO` type
3. divide project to modules

#### 1. Write program that prints out "Hello worlds" and terminates

```
$ stack exec exercise1-exe
Hello World
```

#### 2. Write program that welcomes user, asks for his/her name, greets user and terminates

```
$ stack exec exercise1-exe
Hello, what is your name?
Pawel
Nice to meet you Pawel
```

#### 3. Write program that will run program 2. in an infinte loop

```
$ stack exec exercise1-exe
Hello, what is your name?
Pawel
Nice to meet you Pawel
Hello, what is your name?
Mike
Nice to meet you Mike
Hello, what is your name?
Kate
Nice to meet you Kate
Hello, what is your name?
```

*hints*: 
import Control.Monad (forever)

### 2. Fun with lists

We will cover:
1. List API
2. Property based testing using Quick Check
3. Our first typeclass: `Ord`

This week we will do exercies that appear occasionally at job interviews: Quicksort algorithm and FizzBuzz. Both solutions should manifest the beauty of the Haskell language - once you are done, just compare them with anything written in any other programming language. 
They are both perfect for mastering some functions available for `List`. They also help get intuition when reasoning about lazy evaluation.

#### Quick Sort for list of integers

1. Implement a quick sort algorithm that will take list of integers as an input and return list of integers as an output
2. Write property based tests using QuickCheck that will test your solution

#### Quick Sort for everyone!

*TBD*

#### FizzBuzz

*TBD*

### 3. Apples and oranges

*TBD*

### 4. Reverse Polish notation calculator

*deadline: 1 week*

We will cover:
1. Parser combinators

Write "Reverse Polish notation calculator". Program runs forever where it:
1. promts user for the input expression (written in [Reverse Polish notation](https://en.wikipedia.org/wiki/Reverse_Polish_notation)
2. reads user input
3. evaluates user input:
a) if it is a valid expression, it will evaluate its value
b) if it is an invalid input (not an expression) then it will warn user about it

Example:

```
> 10 20 +
30
> 100 80 -
20
> 10 2 /
5
> 10 sdfsd /
Could not evaluate '10 sdfsd /'
```

*Reading material:*

1. ["Learn you a Haskell" on Reverse Polish notation](http://learnyouahaskell.com/functionally-solving-problems)
2. "Haskell - Programming from first Principles" by Ch.Allen & J.Moronuki chapter 24 "Parser Combinators"
3. "Programming Haskell" by Graham Hutton, chapter 8 "Functional Parsers"

### 5. Advanced Calculator

*deadline: 1 week*

We will cover:
1. State monad

Add new feature to the calculator you implemented in Exercise 2. This time each time you evaluate an expression, its value is printed out along the name of the variable that will hold its value. That variable can be used in further calculations.

Example:

```
> 20 10 +
res0: 30
> 100 res0 -
res1: 70
> res1 res50 /
Could not evaluate 'res1 res50 /'
```

## Ideas for future exercises
### CRUD logic
Create program holding some CRUD logic (like Library where you can borrow, return, remove and list all books).
### Simple CRUD http server with Servant (https://haskell-servant.github.io/)
### Simple CRUD web application with YASOD
### Something with concurrent programming using threads
### Usage of MVar
### Learning Free by creating file system abstraction (FSA)
### Implement FSA for Hadoop
### Implement FSA for ElasticSearch
### Implement FSA for Postgress
### Implement FSA for Cassandra
### distributed-process
- implement ping-pong
- implement chat server
### Exercise that uses extension: OverloadedStrings
### Exercise that uses extension: BangPatterns
### Exercise that uses extension: GADTs
### Exercise that uses extension: DeriveFunctor
### Exercise that uses extension: DeriveGeneric
### Exercise that uses extension: LambdaCase
### Exercise that uses extension: ScopedTypeVariables
### Exercise that uses extension: DeriveFoldable
### Exercise that uses extension: RankNTypes
### Exercise that uses extension: GeneralizedNewtypeDerivin
### Testing tools 
#### Quickcheck
#### HUnit?
### TicTacToe in Haskell
Sth like https://www.youtube.com/playlist?list=PLguYJK7ydFE7KBfUplAk_qLp--xG6gw3R (maybe even rip off :) )

## Inspiraton talks

Talks that go beyond "what is functor"

https://www.youtube.com/watch?v=CT0HvjWoIqE
https://www.youtube.com/watch?v=77RXha9tU_k


