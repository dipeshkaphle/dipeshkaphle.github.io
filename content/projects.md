+++
title = "Projects"
path = "projects"
+++

### Code Character

  Code Character([1](https://github.com/delta/codecharacter-driver-2022), [2](https://github.com/delta/codecharacter-simulator-2022), [3](https://github.com/delta/codecharacter-server-2022)) is a strategy-based programming game where you control
  troops in a turn-based game with the code you write in one of the multiple
  programming languages (C++, Python, Java) available in the game. I worked
  on the implementation of the game simulator which is implemented in C++ and
  on the game driver which uses many low level concepts such as single producer
  multiple consumers, interprocess communication, process management, etc. This
  was all done in Rust.

### Enma

  [Enma](https://github.com/dipeshkaphle/Enma) is a programming language written in C++ and OCaml.
  It has support for primary data types Number, Boolean,
  and String and also has a uni-directional typechecker.
  The language can be transpiled to readable C++ code as
  well as compiled to bytecode. The bytecode emulator is written in OCaml.

### Cpparsec

  [Cpparsec](https://github.com/dipeshkaphle/cpparsec) is a parser combinator libray written in C++, inspired by Haskell’s parsec.
  Parser combinator is a higher-order function that accepts several parsers as input
  and returns a new parser as its output. Implemented with modern C++ with extensive use of lambda functions,
  variadics, etc.

### Risp

  [Risp](https://github.com/dipeshkaphle/risp) is a scheme interpreter written in Rust.
  It only implements a small subset of the language, with
  support for two primitive data types: bool and numbers. It has a few built-in
  functions for different numeric and list transformation operations. It is also
  capable of handling recursion in user defined functions and function scopes.

### LruCache

  [LruCache](https://github.com/dipeshkaphle/lru_cache) is a libray for automatic memoization of function call written in C++. It is inspired by python's lru_cache decorator.

### Pragyan CTF

  A Capture The Flag competition where participants must exploit vulnerabilities in order
  to get the flag. I created challenges for Binary Exploitation and Reversing category,
  which included writing a small custom memory allocator, reversing a highly optimized
  vectorized binary file and other common vulnerabilities. Got familiar with some x86
  Assembly in the process. The challenges were very well received by the players.
