; Keywords and directives
[
  "func"
  "let"
  "return"
  "if"
  "else"
  "import"
  "native"
  "runtime"
  "script"
  "auto"
] @keyword

"#platforms" @preproc

; Attributes
(attribute
  "@" @punctuation.special
  name: (attribute_identifier) @attribute)

; Built-in types
[
  (builtin_type)
  (cast_expression target: (builtin_type))
] @type.builtin

; Functions and parameters
(function_definition
  name: (identifier) @function)

(parameter
  name: (identifier) @variable.parameter)

; Names
(identifier) @variable
(member_identifier) @property

; Literals
(integer_literal) @number
(float_literal) @number
(string_literal) @string
(escape_sequence) @string.escape
[
  (true)
  (false)
] @boolean

; Comments
(comment) @comment

; Operators and punctuation
[
  "="
  "->"
  "+"
  "-"
  "*"
  "/"
  "%"
  "=="
  "!="
  "<="
  ">="
] @operator

[
  "."
  ","
  ":"
  ";"
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket
