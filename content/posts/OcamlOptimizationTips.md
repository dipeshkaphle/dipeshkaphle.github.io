+++
title = "Tips for optimizing OCaml code"
date = "2023-06-20"
draft = true
+++

- Try to reduce `caml_modify` calls
- Reduce allocations, avoiding something like `'a option` can help with
  performance quite a lot.
- Use higher order functions sparingly. For example: see
  [here](https://github.com/janestreet/base/blob/master/src/list.ml#L702). That
  kind of goes on to show the cost of indirect calls(which means inlining can't
  possibly happen)
- Looking into the assembly generated is your friend.
  [Link which tells you how to do that](https://discuss.ocaml.org/t/viewing-generated-assembly-from-ocaml-source-files/6858)
