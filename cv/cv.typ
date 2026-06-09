#show heading: set text(font: "Linux Biolinum")

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

#show link: set text(blue)

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 1.3cm),
)

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

= Dipesh Kafle

#link("mailto:dipesh.kaphle111@gmail.com")[Email] |
#link("mailto:dipesh@u.nus.edu")[NUS Email] |
#link("https://github.com/dipeshkaphle")[GitHub] |
#link("https://linkedin.com/in/dipeshk111/")[LinkedIn] |
#link("https://dipeshkaphle.github.io")[Website]

Software engineer and PhD student focused on programming languages and formal methods, with a strong interest in systems programming and distributed systems.

== Education
#chiline()

*National Institute of Technology Tiruchirappalli* #h(1fr) 2019 -- 2023 \
B.Tech in Computer Science and Engineering #h(1fr) CGPA: 8.84/10 \
- Studied algorithms and data structures, discrete mathematics, computer architecture, operating systems, computer networks, databases, theory of computation, and compilers.

*National University of Singapore* #h(1fr) 2025 -- Present \
Ph.D. in Computer Science #h(1fr) Singapore \
- Coursework: CS6223 Advanced Topics in Software Testing, CS5223 Distributed Systems, CS5232 Formal Specification and Design Techniques, CS5469 Logic in Computer Science, CS6217 Topics in Programming Languages and Software Engineering.
- Teaching Assistant, CS3213 Foundations of Software Engineering.

== Publications
#chiline()

- *Certified Program Synthesis with a Multi-Modal Verifier.* \
  Joint first author. #link("https://arxiv.org/abs/2604.16584")[arXiv]

- *A Mechanically Verified Garbage Collector for OCaml.* \
  Journal of Automated Reasoning, 2025. #link("https://link.springer.com/article/10.1007/s10817-025-09721-0")[Paper]

- *Velvet: A Foundational Multi-Modal Verifier for Imperative Programs in Lean.* \
  #link("https://verse-lab.org/papers/velvet-cav26.pdf")[Paper]

== Work Experience
#chiline()

#link("https://uber.com")[*Uber*] #h(1fr) 2023 -- 2025 \
Software Engineer I -> Software Engineer II (Promoted 2025) #h(1fr) Bengaluru, India \
- Worked on backend systems for Uber's #link("https://www.uber.com/in/en/ai-solutions/")[AI Solutions] initiative, including the initial MVP and later scaling efforts.
- Worked on improving reliability, security, and observability across HITL orchestration services.
- Participated in on-call rotations, handled production incidents, coordinated rollouts and migrations.
- Active code contributor and reviewer; contributed to team documentation and internal guides for testing and debugging backend systems.

#link("https://github.com/prismlab")[*IIT Madras*] #h(1fr) 2022 -- 2024 \
Research Intern #h(1fr) Remote \
- Worked with Dr. KC Sivaramakrishnan and Dr. Kartik Nagar alongside a PhD student on a project that aimed to verify an OCaml style garbage collector with F\*/Low\*.

- Helped with the integration of the extracted verified code with the #link("https://github.com/prismlab/ocaml-gc-hacking")[OCaml bytecode interpreter], ran real-world OCaml programs and ran benchmarks to analyze performance. Also wrote a #link("https://github.com/kayceesrk/ocaml/tree/29e76177c304dfb9fd75440c35ba4fb2744d4d0b/runtime/verified_gc/allocator")[next-fit allocator in Rust] to work with the generated verified stop-the-world mark and sweep code. 

#link("https://cdac.in/index.aspx?id=BL")[*CDAC Bangalore*] #h(1fr) 2023 \
Research Intern #h(1fr) Remote \
- Developed a GCC plugin that transformed a familiar code snippet to highly optimized subroutines and another one that tuned loop unrolling heuristics based on linear regression model. Additonally, suggested potential ARM specific optimizations for future exploration.

#link("https://tarides.com")[*Tarides*] #h(1fr) 2023 \
Software Engineering Intern #h(1fr) Remote \
- Worked on developing #link("https://github.com/ocaml-multicore/par_incr")[Par_incr], a library for incremental computation with support for freshly introduced parallelism constructs in OCaml.


== Technical Projects
#chiline()

#link("https://github.com/ocaml-multicore/par_incr")[*Par_incr*] #h(1fr)\
- A library for incremental computation with support for parallelism in *OCaml*. Other similar libraries lack parallelism constructs. The work is based on the paper #link("https://drive.google.com/file/d/130-sCY1YPzo4j3YAJ7EL9-MflK0l8RmJ/view?pli=1")[Efficient Parallel Self-Adjusting Computation]. [#link("https://dipeshkaphle.github.io/par_incr_presentation/presentation.pdf")[Slides]]
- Wrote the library from scratch and thoroughly tested it.
- Identified performance bottlenecks through profiling and applied various optimization techniques in OCaml.
- Wrote benchmarks, compared the performance with other similar libraries, and achieved similar if not better performance on average.

#link("https://github.com/orgs/delta/repositories?q=codecharacter&type=all&language=&sort=")[*Code Character*] #h(1fr)\
- A strategy-based programming game where you control troops in a turn-based game with the code you write in one of the multiple programming languages (C++, Python, Java) available in the game.
- Worked on the implementation of the #link("https://github.com/delta/codecharacter-simulator/")[simulator (*C++*)]
- Worked on the #link("https://github.com/delta/codecharacter-driver/")[game driver (*Rust*)], including process orchestration, inter-process communication, and concurrent execution.

#link("https://github.com/dipeshkaphle/enma")[*Enma*] #h(1fr)\
- A programming language written in *C++* and *OCaml*.
- The language has a unidirectional type checker and can be compiled to bytecode or readable C++ code. The bytecode interpreter is written in OCaml.

#link("https://github.com/dipeshkaphle/brainfuck")[*BF JITs*] #h(1fr)\
- Implemented Just In Time compilers for Brainfuck language using Dynasm and Inkwell crate (provides LLVM bindings) in *Rust*.

== Talks and Writings
#chiline()

*Understanding Memory Management* #h(1fr)\
- #link("https://github.com/dipeshkaphle/hackertalk-mem-management")[Slides], #link("https://youtu.be/00Rk3o7Nv54")[Video]

*Personal Blog* #h(1fr)\
- #link("https://dipeshkaphle.github.io/posts/y-combinator/")[What is a Fixed Point Combinator?]
- #link("https://dipeshkaphle.github.io/posts/nonlocaljumps/")[Non Local Jumps with setjmp and longjmp]


== Skills
#chiline()

*Programming:* C, C++, Rust, OCaml, Lean4, Java, TypeScript, Python \
*Areas:* Programming Languages, Formal Verification, Systems Programming, Back-End Development, Databases
