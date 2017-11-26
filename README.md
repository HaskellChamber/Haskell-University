# Haskell-University
Portfolio-based approach to learning Haskell

## New semster just started!

| Exercise                                                                        | Deadline         |
| ------------------------------------------------------------------------------- | ----------------:|
| 1. [Hello World](#1-hello-world)                                                | 03 December 2017 |
| 2. [Reverse Polish notation calculator](#2-reverse-polish-notation-calculator)  | 10 December 2017 |
| 3. [Advanced Calculator](#3-advanced-calculator)                                | 17 December 2017 |

## Exercises 

### 1. Hello World 

*deadline: 1 week*

We will cover:
1. How to init new Haskell project
2. using the `IO` type
3. divide project to modules

Write program that:

1. Write program that prints out "Hello worlds" and terminates
2. Write program that welcomes user, asks for his/her name, greets user and terminates
3. Write program that will run program 2. in an infinte loop

*hints: 
import Control.Monad (forever)

### 2. Reverse Polish notation calculator

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

### 3. Advanced Calculator

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

## Inspiraton talks

Talks that go beyond "what is functor"

https://www.youtube.com/watch?v=CT0HvjWoIqE
https://www.youtube.com/watch?v=77RXha9tU_k


