# Macaulay2 for Zed

[Macaulay2](https://macaulay2.com/) language support for the [Zed](https://zed.dev/) editor.

## Features

- Syntax highlighting (via [tree-sitter-macaulay2](https://github.com/AlexanderGolys/tree-sitter-macaulay2))
- Code outline / symbol navigation
- Bracket matching and auto-indent
- Language server integration (completions, hover docs, go-to-definition, diagnostics)
- Interactive REPL via Zed's built-in Jupyter support

## Requirements

### Editing and LSP

Install [Macaulay2](https://macaulay2.com/). The `M2-language-server` script is distributed
alongside the `M2` executable and will be picked up automatically when it is on your `PATH`.


### Interactive REPL

Install the [Macaulay2 Jupyter kernel](https://github.com/Macaulay2/Macaulay2-Jupyter-Kernel):

```sh
pip install macaulay2-jupyter-kernel
python3 -m m2_kernel install
```

Currently, Zed does not render LaTeX in the REPL output, so for best results, use `standard` mode, e.g.:

```m2
%mode standard
R = QQ[x,y,z,w]
I = monomialCurveIdeal(R, {1,2,3})
C = res I
