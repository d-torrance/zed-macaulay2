[
  (sequence)
  (parenthesized_expression)
  (list)
  (array)
  (angle_bar_list)
  (lambda_expression)
  (if_statement)
  (for_statement)
  (while_statement)
  (try_statement)
  (new_statement)
] @indent

(sequence ")" @end)
(parenthesized_expression ")" @end)
(list "}" @end)
(array "]" @end)
(angle_bar_list "|>" @end)
