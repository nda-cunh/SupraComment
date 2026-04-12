vim9script

import autoload 'SupraComment.vim' as Comment

noremap  <Plug>(SupraComment)		<scriptcmd>call Comment.Commentary(false)<CR>
vnoremap <Plug>(SupraComment)		<esc><scriptcmd>call Comment.Commentary(true)<CR>gv
 
noremap  <Plug>(SupraCommentForce)	<scriptcmd>call Comment.Commentary(false, Comment.FORCE_COMMENT)<CR>
vnoremap <Plug>(SupraCommentForce) 	<esc><scriptcmd>call Comment.Commentary(true, Comment.FORCE_COMMENT)<CR>gv

noremap  <Plug>(SupraUnCommentForce) <scriptcmd>call Comment.Commentary(false, Comment.FORCE_UNCOMMENT)<CR>
vnoremap <Plug>(SupraUnCommentForce) <esc><scriptcmd>call Comment.Commentary(true, Comment.FORCE_UNCOMMENT)<CR>gv

command -nargs=0 Commentary call Comment.Commentary(false, Comment.NORMAL)
command -nargs=0 Comment call Comment.Commentary(false, Comment.FORCE_COMMENT)
command -nargs=0 UnComment call Comment.Commentary(false, Comment.FORCE_UNCOMMENT)

if !hasmapto('<Plug>SupraComment')
    nmap <c-_> <Plug>(SupraComment)
    vmap <c-_> <Plug>(SupraComment)
    nmap <c-/> <Plug>(SupraComment)
    vmap <c-/> <Plug>(SupraComment)
endif

if !hasmapto('<Plug>SupraCommentForce')
	nmap \ <Plug>(SupraCommentForce)
	vmap \ <Plug>(SupraCommentForce)
endif

if !hasmapto('<Plug>SupraUnCommentForce')
	nmap <c-\> <Plug>(SupraUnCommentForce)
	vmap <c-\> <Plug>(SupraUnCommentForce)
endif
