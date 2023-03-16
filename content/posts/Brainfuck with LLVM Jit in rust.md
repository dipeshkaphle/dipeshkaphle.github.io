+++
title = "Brainfuck with LLVM Jit in Rust"
date = "2023-01-03"
draft = true
+++

Some time ago, I stumbled upon
[this article/tutorial series](https://eli.thegreenplace.net/2017/adventures-in-jit-compilation-part-1-an-interpreter/).
I had went through the part 1 and part 2 of the series in Rust. The
[part 1](https://eli.thegreenplace.net/2017/adventures-in-jit-compilation-part-1-an-interpreter/)
builds a bytecode interpreter while the
[part-2](https://eli.thegreenplace.net/2017/adventures-in-jit-compilation-part-2-an-x64-jit/)
builds a jit. Following part 2 in Rust was quite fun as I learnt about
[dynasm-rs](https://github.com/CensoredUsername/dynasm-rs) and followed the
article. The code for jit lies
[here](https://github.com/dipeshkaphle/Programs/blob/master/bf_interpreter/src/optbytecode_jit.rs).
I didn't follow all of part 2 however, I left out some optimizations done there.

I was most excited about
[part-3](https://eli.thegreenplace.net/2017/adventures-in-jit-compilation-part-3-llvm/),
mainly because it used [LLVM](https://llvm.org/). I've always wanted to use LLVM
but never really got around it. The problem however is that the article uses
C++, while I'm following it in Rust. I'll have to do some research, see llvm
bindings in rust and then follow along with the article. So, I thought I'll
write this to share my findings.

## Boilerplate

I already have my parser ready
[here](https://github.com/dipeshkaphle/Programs/blob/master/bf_interpreter/src/parser.rs).
So what I essentially need to do is fill the following function in
[src/llvm_jit.rs](https://github.com/dipeshkaphle/Programs/blob/master/bf_interpreter/src/llvm_jit.rs).

Initially it'll look like this

```rust
pub struct LlvmJit {}

impl LlvmJit {
    pub fn parse_and_run(src_code: String) {
        let prog = Parser::parse_to_bytecode(src_code);

        // Write all the codegen stuff here
    }
}
```

## Finding crate for llvm bindings

After some(not a lot) research, I found
[inkwell](https://github.com/TheDan64/inkwell/) crate, which I reckon will
server my purpose.
