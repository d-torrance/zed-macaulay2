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
```

## License

MIT License

Copyright (c) 2026 Doug Torrance

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the " Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice (including the next paragraph) shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
