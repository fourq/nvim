" File: astylerc.vim
" Author: Jacky Alciné
" Description: Syntax file for async


if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword aStyleOption indent-switches indent-cases pad-oper pad-paren
syn keyword aStyleOption pad-header convert-tabs delete-empty-lines align-pointer
syn keyword aStyleOption add-one-line-brackets add-brackets indent indent=spaces
syn region  aStyleComment start="#" end="$"

hi def link aStyleOption  Keyword
hi def link aStyleComment Comment
