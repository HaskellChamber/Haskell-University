![logo](hu-logo.jpg)
# Haskell-University
[![Join the chat at https://gitter.im/HaskellChamber/Haskell-University](https://badges.gitter.im/HaskellChamber/Haskell-University.svg)](https://gitter.im/HaskellChamber/Haskell-University?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Portfolio-based approach to learning Haskell

### About

Haskell Univiersty is a community driven project, where one can learn Haskell by solving exercieses. You will create programs that each week will gain on complexity.  Aim is to learn both the language as well as its real world application by exploring as many libraries, frameworks and tools as possible.

Haskell University is designed to be self-paced, each exercies has a deadline estimated in weeks - you can start at anytime and just keep your private schedule. However because it hardly ever works :), starting 26th Novemeber we initialized first edition that will keep public schedule. If you will take that challange, please create PR adding yourself to the [list of students](#students)!

This is community driven project. You are more then welcome to share your ideas, PRs and comments!

For more information, see our [FAQ](#faq). If you are experienced Haskell developer, please [see 2.](#2-im-senior-haskell-developer-can-i-help)

## First Edition!

First edition of Haskell University just started! 

### How can I join?

You can join by adding your name to the [list of students](#students) with a link to the repository where you will push your solutions to the exercises. This is purely done for transparency. You will see other people taking part in the challange, so we all can learn from each other.
Once you've added yourself to that list, you can consider yourself enrolled :) From now on you must solve each exercise by the end of the deadline. We have [a gitter channel](https://gitter.im/HaskellChamber/Haskell-University?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) where you can talk with fellow students, exchange ideas, reason about solutions.

### Students

| Student             | Repository                                                                  |
| ------------------- | --------------------------------------------------------------------------- |
| Pawel Szulc         | [solutions](https://github.com/rabbitonweb/HaskellUniversity-semester1)     |
| Lukasz Byczynski    | [solutions](https://github.com/LukaszByczynski/HaskellUniversity-semester1) |
| Bartosz Bonisławski | [solutions](https://github.com/bbonislawski/HaskellUniversity-semester1)    |
| Igor Mielientiev    | [solutions](https://github.com/mielientiev/Haskell-University-semester1)    |
| Przemek Kamiński    | [solutions](https://github.com/CGenie/HaskellUniversity-semester1)          |

#### Exercises schedlue

| Exercise                                                                           | Deadline            |
| ---------------------------------------------------------------------------------- | -------------------:|
| 1. [Hello World](#1-hello-world)                                                   |    03 December 2017 |
| 2. [Fun with lists](#2-fun-with-lists)                                             |    17 December 2017 |
| 3. [Apples and oranges](#3-apples-and-oranges)                                     |    31 December 2017 |
| 4. [Reverse Polish notation calculator](#4-reverse-polish-notation-calculator)     |    07 January  2018 |
| 5. [Advanced Calculator](#5-advanced-calculator)                                   |    14 January  2018 |

## Exercises 

### 1. Hello World 

*deadline: 1 week*

We will cover:
1. How to init a new Haskell project
2. using the `IO` type
3. divide project to modules

This week is all about getting started. Familiarize yourself with [Stack](https://docs.haskellstack.org/en/stable/README/) and basic concepts of the language: function definition and application, module creation, `IO` type.

Programs:

#### 1. Write a program that prints out "Hello worlds" and terminates

```
$ stack exec exercise1-exe
Hello World
```

#### 2. Write a program that welcomes the user, asks for his/her name, greets user and terminates

```
$ stack exec exercise1-exe
Hello, what is your name?
Pawel
Nice to meet you Pawel
```

#### 3. Write a program that will run program 2. in an infinite loop

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

*deadline: 2 weeks*

We will cover:
1. List API
2. Property based testing using Quick Check
3. Our first typeclass: `Ord`

This week we will do exercies that appear occasionally at job interviews: Quicksort algorithm and FizzBuzz. Both solutions should manifest themself the beauty of the Haskell language - once you are done, just compare them with anything written in any other programming language. 
They are both perfect for mastering some functions available for `List`. They also help get intuition when reasoning about lazy evaluation.
Abstract version of quicksort implementation will require to understand concept of a typeclass and usage of an `Ord` typeclass.
We will also have to test our solutions, so this is a great opportunity to introduce QuickCheck.

Programs:

#### Quicksort for list of integers

1. Implement a [Quicksort](https://en.wikipedia.org/wiki/Quicksort) algorithm that will take a list of integers as an input and return a sorted list of integers as an output. We are not looking for the most performant version, just the simplest version of this well known divide and conquer algorithm.
2. Write property based tests using QuickCheck that will test your solution. Think about the properties that you can check.

```
$ stack exec exercise2-exe 3 32 2 1 2 5 5 321 1 123 12 3 43 345
[1,1,2,2,3,3,5,5,12,32,43,123,321,345]
```

#### Quick Sort for everyone!

1. Extend your Quicksort algorithm to work with a list of any arbitrary type
2. What are possible constraints on that type?

#### FizzBuzz

1. Implement a program [FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz) that will take a number as an input and generate list of strings as the output containing the "fizzbuzz" sequence
2. Can you think of any properties that you could test with QuickCheck?

### 3. Apples and oranges

*deadline: 1 week*

Programs:

### Shopping cart

1. You are building a checkout system for a shop which only sells apples and oranges.
2. Apples cost 60p and oranges cost 25p.
3. Build a checkout system which takes a list of items scanned at the till and outputs the total cost
    For example: [ Apple, Apple, Orange, Apple ] => £2.05

### Simple offers

The shop decides to introduce two new offers 
** buy one, get one free on Apples 
** 3 for the price of 2 on Oranges

Update your checkout functions accordingly

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

Add new feature to the calculator you implemented in Exercise 2. This time each time you evaluate an expression, its value is printed out along with the name of the variable that will hold its value. That variable can be used in further calculations.

Example:

```
> 20 10 +
res0: 30
> 100 res0 -
res1: 70
> res1 res50 /
Could not evaluate 'res1 res50 /'
```


### FAQ

#### 1. Will you provide lectures notes?
Originally Haskell University's intent is to provide challenges, problems to solve. It's the students responsibility to explore the topic on his/her own. However 
1. occasionally we will point to book chapters, blog posts as hints for the exercies
2. we encourage the community to post solutions to the problems (via blogposts, gists, repositories, youtube videos), we will be more then happy to include them as solutions along the exercies. 

#### 2. I'm senior Haskell developer, can I help?
Yes! We need your help. We need experienced Haskell developers to create exercies for us, to challange students. If you have an idea for an exercise, please submit an issue or add it directly as a pull request to this README.md




