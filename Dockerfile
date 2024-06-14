# syntax=docker/dockerfile:1
FROM ocaml/opam:ubuntu-ocaml-5.1
USER opam:opam
RUN sudo apt update && sudo apt install -y \
        libgmp-dev \
 && opam pin add coq 8.18.0 \
 && opam install vscoq-language-server \
 && sudo apt clean \
 && sudo rm -rf /var/lib/apt/lists/*

 CMD ["/bin/bash"]
