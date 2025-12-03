; Context queries for nvim-treesitter-context
; Shows structural headers in the context sticky scroll for LLVM IR

; Function definitions - show header until body starts
(fn_define
  body: (function_body
    "{" @context.end)) @context

; Basic block labels - show label when inside the block
(label) @context
