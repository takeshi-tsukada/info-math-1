# syntax=docker/dockerfile:1

# We use OCaml 4.14 as OCaml 5 + ocamlfind has a problem with Coq/Rocq
# See https://github.com/ocaml/ocamlfind/issues/107
FROM ocaml/opam:ubuntu-ocaml-4.14
USER opam:opam
RUN sudo apt update && sudo apt install -y \
        libgmp-dev pkg-config \
 && opam pin add coq 8.20.1 \
#  && opam pin add rocq-prover 9.0.0 \
 && opam install vscoq-language-server \
 && sudo apt clean \
 && sudo rm -rf /var/lib/apt/lists/*

 CMD ["/bin/bash"]
