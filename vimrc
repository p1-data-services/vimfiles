" =======================================
" Initially based on/forked from: Jeremy Mack (@mutewinter)
" [http://github.com/mutewinter/dot_vim]
" Who: Luan Santos (@cfcluan)
" What: .vimrc of champions
" Version: 2.0
" =======================================

set nocompatible
runtime! NeoBundle.vim

silent! source ~/.vimrc.local.before

runtime! config/basic.vim
runtime! config/bindings.vim
runtime! config/colors.vim

" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

runtime! config/plugin/NERDTree.vim
runtime! config/plugin/ack.vim
runtime! config/plugin/commentary.vim
runtime! config/plugin/ctrlp.vim
runtime! config/plugin/fugitive.vim
runtime! config/plugin/signify.vim
runtime! config/plugin/undotree.vim
runtime! config/plugin/neocomplcache.vim
runtime! config/plugin/golang.vim

" ----------------------------------------
" Lib load path
" ----------------------------------------

runtime! lib/functions.vim
runtime! lib/auto_commands.vim

" Platform Specific
runtime! config/platform.vim

silent! source ~/.vimrc.local

set wildignore+=*/Godeps/*,*/phd-cf/phd-release/*,*/phd-cf/dummy-phd-release/*
map <D-t> :tabnew<CR>
let g:ctrlp_switch_buffer = '0'
autocmd! GUIEnter * set vb t_vb=
let g:syntastic_auto_loc_list = 0
let g:syntastic_always_populate_loc_list = 1
map <D-l> :lfirst<CR>

