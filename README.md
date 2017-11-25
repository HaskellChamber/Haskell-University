# Haskell-University
Portfolio-based approach to learning Haskell

## Exercises 

### 1. Hello World 

*deadline: 1 week*

1. Write program that prints out "Hello worlds" and terminates
2. Write program that welcomes user, asks for his/her name, greets user and terminates
3. Write program that will run program 2. in an infinte loop

Things to learn:
1. Init new Haskell project
2. using the `IO` type
3. divide project to modules

*hints: 
import Control.Monad (forever)

### 2. Reverse Polish notation calculator

*deadline: 1 week*

Write "Reverse Polish notation calculator". Program runs forever where it:
1. promts user for the input expression (written in Reverse Polish notation)
2. reads user input
3. evaluates user input:
a) if it is a valid expression, it will evaluate its value
b) if it is an invalid input (not an expression) then it will warn user about it

* Reading material*:
1. ["Learn you a Haskell" on Reverse Polish notation](http://learnyouahaskell.com/functionally-solving-problems)


## Ideas for future exercises

### Simple calculator (I think I heard that already from someone ;) )

### Simple language parser (could be an extension of above [Polish notation maybe?])

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



