" Vim syntax file
" Language:	jackrabbit node type notation
" Maintainer:	Stuart Freeman <stuart.freeman@et.gatech.edu>
" Last Change:	2010 August 20

if exists("b:current_syntax")
  finish
endif

syn case match
syn sync minlines=50

syn region cndComment start=+/\*+ end=+\*/+

syn match cndComment +//.*$+
syn match cndOther /[A-Za-z0-9_]\+:[A-Za-z0-9_]\+/
syn keyword cndPropertyTypes STRING String string BINARY Binary binary LONG Long long DOUBLE Double double BOOLEAN Boolean boolean DATE Date date NAME Name name PATH Path path REFERENCE Reference reference UNDEFINED Undefined undefined *
syn keyword cndOther orderable ord o mixin mix m primary pri ! autocreated aut a mandatory man m protected pro p multiple mul COPY Copy copy VERSION Version version INITIALIZE Initialize initialize COMPUTE Compute compute IGNORE Ignore ignore ABORT Abort abort
syn match cndOperator />\|=\|</
syn match cndFunction /\[.\{-\}\]/
syn match cndQuoted /\'.\{-\}\'/

syn region cndNamespace start=/</ end=/>/

hi def link cndComment           Comment
hi def link cndNamespace         Special
hi def link cndOther             Label
hi def link cndPropertyTypes     Type
hi def link cndOperator          Operator
hi def link cndFunction          Function
hi def link cndQuoted            String

let b:current_syntax = "cdn"
