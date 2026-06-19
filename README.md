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

To use a custom binary location, add to your Zed `settings.json`:

```json
{
  "lsp": {
    "m2-language-server": {
      "binary": {
        "path": "/path/to/M2-language-server"
      }
    }
  }
}
```

### Interactive REPL

Install the [Macaulay2 Jupyter kernel](https://github.com/Macaulay2/Macaulay2-Jupyter-Kernel):

```sh
pip install macaulay2-jupyter-kernel
python3 -m m2_kernel install
```

Verify with `jupyter kernelspec list` — you should see an `m2` entry. Then open a `.m2`
file in Zed and run **REPL: Run** (`ctrl-shift-enter` by default). Zed will auto-select
the Macaulay2 kernel.

If you have multiple kernels installed, you can pin the selection in `settings.json`:

```json
{
  "jupyter": {
    "kernel_selections": {
      "macaulay2": "m2"
    }
  }
}
```

## License

GPL-2.0-or-later
