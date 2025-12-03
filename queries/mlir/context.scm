; Context queries for nvim-treesitter-context
; Shows structural headers in the context sticky scroll for MLIR

; Module - show until body starts
(builtin_dialect
  body: (region
    "{" @context.end)) @context

; Function definitions
(func_dialect
  body: (region
    "{" @context.end)) @context

(llvm_dialect
  body: (region
    "{" @context.end)) @context

; CIR function definitions and scopes
(cir_dialect
  body: (region
    "{" @context.end)) @context

; CIR conditionals (uses 'then' field)
(cir_dialect
  then: (region
    "{" @context.end)) @context

; CIR else blocks
(cir_dialect
  else: (region
    "{" @context.end)) @context

; CIR loops (uses 'cond' field)
(cir_dialect
  cond: (region
    "{" @context.end)) @context

; Block labels
(block_label) @context

; SCF control flow
(scf_dialect
  body: (region
    "{" @context.end)) @context

(scf_dialect
  trueblk: (region
    "{" @context.end)) @context

(scf_dialect
  falseblk: (region
    "{" @context.end)) @context

; Affine control flow
(affine_dialect
  body: (region
    "{" @context.end)) @context

(affine_dialect
  trueblk: (region
    "{" @context.end)) @context

(affine_dialect
  falseblk: (region
    "{" @context.end)) @context

; Linalg operations with regions
(linalg_dialect
  body: (region
    "{" @context.end)) @context

; Generic operations with regions
(generic_operation
  (region
    "{" @context.end)) @context
