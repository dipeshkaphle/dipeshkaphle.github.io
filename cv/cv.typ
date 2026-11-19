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

// Mixed style: section headings as shaded boxes (from the reference), rest as before.
#show heading.where(level: 2): it => block(
  width: 100%,
  fill: luma(238),
  stroke: 0.6pt + black,
  inset: (x: 5pt, y: 3.5pt),
  above: 1.2em,
  below: 0.8em,
  text(size: 11pt, it.body),
)
#let chiline() = none
#let me = underline(offset: 2pt)[Dipesh Kafle]
#let todo(body) = text(fill: red)[[#body]]

= Dipesh Kafle

#link("mailto:dipesh.kaphle111@gmail.com")[Email] |
#link("mailto:dipesh@u.nus.edu")[NUS Email] |
#link("https://github.com/dipeshkaphle")[GitHub] |
#link("https://linkedin.com/in/dipeshk111/")[LinkedIn] |
#link("https://dipeshkaphle.github.io")[Website]

Interested in programming languages, formal verification and systems programming. Currently working on getting verified, efficient systems code out of Lean, and maintaining and improving Velvet, a multi-modal verifier in Lean. Previously a backend software engineer at Uber.

== Education
#chiline()

*National University of Singapore* #h(1fr) 2025 -- Present \
Ph.D. in Computer Science #h(1fr) Singapore \
- Member of the #link("https://verse-lab.org")[VERSE Lab], advised by #link("https://ilyasergey.net")[Ilya Sergey].

*National Institute of Technology Tiruchirappalli* #h(1fr) 2019 -- 2023 \
B.Tech in Computer Science and Engineering #h(1fr) CGPA: 8.84/10 \
- Thesis: _Compiler Optimizations for HPC Architectures_. #link("https://dipeshkaphle.github.io/btech-thesis.pdf")[PDF]

== Publications
#chiline()

+ *Certified Program Synthesis with a Multi-Modal Verifier.* \
  Yueyang Feng\*, #me\*, Vladimir Gladshtein, Vitaly Kurin, George Pîrlea, Qiyuan Zhao, Peter Müller, Ilya Sergey. \
  _ASE 2026._ \*Joint first authors. #link("https://verse-lab.org/papers/leetproof-ase26.pdf")[Paper], #link("https://github.com/verse-lab/leetproof")[Code]

+ *Velvet: A Foundational Multi-Modal Verifier for Imperative Programs in Lean.* \
  Vladimir Gladshtein, Vitaly Kurin, Yueyang Feng, #me, George Pîrlea, Qiyuan Zhao, Ilya Sergey. \
  _CAV 2026._ *Distinguished Paper Award.* #link("https://verse-lab.org/papers/velvet-cav26.pdf")[Paper]

+ *A Mechanically Verified Garbage Collector for OCaml.* \
  Sheera Shamsu, #me, Dhruv Maroo, Kartik Nagar, Karthikeyan Bhargavan, KC Sivaramakrishnan. \
  _Journal of Automated Reasoning, 2025._ #link("https://kcsrk.info/papers/verifiedgc_feb_25.pdf")[Paper]

== Work Experience
#chiline()

#link("https://uber.com")[*Uber*] #h(1fr) 2023 -- 2025 \
Software Engineer I, II #h(1fr) Bengaluru, India \
- Early backend engineer on Uber's #link("https://www.uber.com/in/en/ai-solutions/")[AI Solutions]: one of two engineers on its initial MVP, where I built the first payments workflow for knowledge workers, and later helped scale the platform to tens of thousands of workers.
- Subject-matter expert for the human-in-the-loop (HITL) orchestration service behind AI Solutions. Led a revamp of its authorization flows, and handled production incidents across services.
- Found reliability issues in the event-creation flows behind knowledge-worker payouts, and mentored an intern through the fix, which rolled out with no issues.
- Wrote an internal guide to testing and debugging backend systems (RPC, Cadence, Kafka), used regularly by engineers.

#link("https://github.com/prismlab")[*IIT Madras*] #h(1fr) 2022 -- 2024 \
Research Intern #h(1fr) Remote \
- Part of the team that built a verified stop-the-world mark-and-sweep garbage collector for OCaml in F\*/Low\*, supervised by Kartik Nagar and KC Sivaramakrishnan. Published in the _Journal of Automated Reasoning_.
- Integrated the extracted C code into the #link("https://github.com/prismlab/ocaml-gc-hacking")[OCaml 4.14 bytecode runtime], replacing its GC. Wrote the #link("https://github.com/kayceesrk/ocaml/tree/29e76177c304dfb9fd75440c35ba4fb2744d4d0b/runtime/verified_gc/allocator")[next-fit allocator in Rust] that allocates into the verified heap.
- Benchmarked standard and real-world OCaml programs. The verified GC matches the stock GC on many of them.

#link("https://cdac.in/index.aspx?id=BL")[*CDAC Bangalore*] #h(1fr) 2023 \
Research Intern #h(1fr) Remote \
- Compared the assembly that GCC and a vendor HPC compiler generate for scientific kernels on ARM, to find optimizations GCC was missing. This became my #link("https://dipeshkaphle.github.io/btech-thesis.pdf")[B.Tech thesis].
- Wrote two GCC plugins: one tunes loop unrolling (about 15% faster matrix multiplication), and one safely replaces common linear algebra patterns in the AST with optimized BLAS calls.
- Built #link("https://github.com/dipeshkaphle/gcc_debug_tree_visualizer")[an OCaml tool] that turns GCC's `debug_tree` AST dumps into Graphviz graphs, to help develop the plugins.

#link("https://tarides.com")[*Tarides*] #h(1fr) 2023 \
Software Engineering Intern #h(1fr) Remote \
- Designed and built #link("https://github.com/ocaml-multicore/par_incr")[Par_incr] from scratch, a library for parallel incremental computation on OCaml 5’s multicore runtime, based on #link("https://drive.google.com/file/d/130-sCY1YPzo4j3YAJ7EL9-MflK0l8RmJ/view?pli=1")[_Efficient Parallel Self-Adjusting Computation_]. Mentored by Vesa Karvonen.
- Profiled and optimized it, and benchmarked it against existing incremental libraries, matching or beating them on average.


== Technical Projects
#chiline()

#link("https://github.com/verse-lab/velvet")[*Velvet*] #h(1fr) Primary maintainer \
- A multi-modal verifier for imperative programs in *Lean 4*, with Dafny-inspired syntax, combining automation (SMT, `grind`) with Lean's interactive proofs.
- Led Velvet 2.0: migrated it from the #link("https://github.com/verse-lab/loom")[Loom] framework to Lean's #link("https://lean-lang.org/doc/reference/latest/The--vcgen--tactic/Predicate-Transformers/#Std___WP___WPMonad___mk")[standard-library WP monads] and #link("https://lean-lang.org/doc/reference/latest/The--vcgen--tactic/")[`vcgen`] tactic, bringing it to feature parity with the original, and built metatheory on top of the stdlib primitives to support partial correctness.
- Extended `vcgen` with named verification conditions and hypotheses, VC normalization, and error messages that point at the failing clause.

#link("https://github.com/verse-lab/leetproof")[*LeetProof*] #h(1fr) Co-developer \
- An agentic pipeline for certified program synthesis on top of Velvet: specifications are checked with property-based testing and an LLM judge, then programs, loop invariants and Lean proofs are synthesized stage by stage.
- Built the synthesis pipeline, invariant inference with guardrails against cheating, and a hybrid prover that tries direct proofs and recursively decomposes hard goals, using LeanExplore and #link("https://github.com/leanprover/Pantograph")[Pantograph].

#link("https://github.com/orgs/delta/repositories?q=codecharacter&type=all&language=&sort=")[*Code Character*] #h(1fr)\
- A programming game where players control troops with code. Worked on the #link("https://github.com/delta/codecharacter-simulator/")[C++ simulator] and the #link("https://github.com/delta/codecharacter-driver/")[Rust game driver] (process orchestration, IPC, concurrency).

== Teaching
#chiline()

*National University of Singapore* #h(1fr)\
- Teaching Assistant, CS2040 Data Structures and Algorithms.
- Teaching Assistant, CS3213 Foundations of Software Engineering.

== Talks and Writings
#chiline()

*Certified Program Synthesis with a Multi-Modal Verifier* #h(1fr)\
- _ASE 2026_, Munich, Germany #h(1fr) October 2026
- _LMU Munich_, Jasmin Blanchette's group #h(1fr) October 2026
- Talk on the LeetProof paper. #link("https://verse-lab.org/papers/leetproof-ase26.pdf")[Paper], #link("https://dipeshkaphle.github.io/leetproof-ase-26/presentation.pdf")[Slides]

*Par_incr: A Library for Incremental Computation with Support for Parallelism* #h(1fr) Tarides, July 2023 \
- Presented the library I built during my internship. #link("https://dipeshkaphle.github.io/par_incr_presentation/presentation.pdf")[Slides]

*Understanding Memory Management* #h(1fr) HackerTalks, NIT Trichy \
- #link("https://github.com/dipeshkaphle/hackertalk-mem-management")[Slides], #link("https://youtu.be/00Rk3o7Nv54")[Video]

*Personal Blog* #h(1fr)\
- #link("https://dipeshkaphle.github.io/posts/y-combinator/")[What is a Fixed Point Combinator?]
- #link("https://dipeshkaphle.github.io/posts/nonlocaljumps/")[Non Local Jumps with setjmp and longjmp]


== Skills
#chiline()

*Programming:* C, C++, Rust, OCaml, Lean4, Java, TypeScript, Python \
*Areas:* Programming Languages, Formal Verification, Systems Programming, Back-End Development, Databases
