; Function definitions
(binary_expression
  left: (symbol) @name
  operator: [":=" "="]
  right: (lambda_expression)) @item

(binary_expression
  left: (symbol) @name
  operator: [":=" "="]
  right: (binary_expression
    right: (lambda_expression))) @item

; Method installations
((binary_expression
  left: (binary_expression
    left: (symbol) @name
    operator: "SPACE")
  operator: [":=" "="]) @item
  (#match? @name "^[a-z].*"))

((binary_expression
  left: (binary_expression
    operator: _ @name)
  operator: [":=" "="]) @item
  (#match? @name "\\S"))

[
  (binary_expression
    left: (prefix_expression
      operator: _ @name)
    operator: [":=" "="])
  (binary_expression
    left: (postfix_expression
      operator: _ @name)
    operator: [":=" "="])
] @item

; Variable definitions
(binary_expression
  left: (symbol) @name
  operator: [":=" "="]) @item
