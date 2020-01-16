"%%%%%%%%%%%%%%%%%%%% INSTALED PLUGINS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

call plug#begin('~/.local/share/nvim/plugged')
"Plugins for install must be here
"____________________________________________________________________

"This plugin provides a start screen for Vim and Neovim.
Plug 'mhinz/vim-startify'
"____________________________________________________________________

"Comment functions so powerful—no comment necessary.
Plug 'scrooloose/nerdcommenter'
"____________________________________________________________________

"A Vim plugin which shows a git diff in the 'gutter' (sign column).
"It shows whether each line has been added, modified, and where lines 
"have been removed. You can also stage and undo individual hunks.
Plug 'airblade/vim-gitgutter'
"____________________________________________________________________

"Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"____________________________________________________________________

"Allows for easy cycling between line numbering modes.
Plug 'jcorbin/vim-number-cycle'
"____________________________________________________________________

"Underlines the word under the cursor
Plug 'itchyny/vim-cursorword'
"____________________________________________________________________
"Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'
"Vim CtrlP plugin to switch between opened tabs.
Plug 'davidegx/ctrlp-smarttabs'
"____________________________________________________________________

"Tagbar is a Vim plugin that provides an easy way to browse the tags 
"of the current file and get an overview of its structure. It does 
"this by creating a sidebar that displays the ctags-generated tags of
"the current file, ordered by their scope. This means that for example
"methods in C++ are displayed under the class they are defined in.
Plug 'majutsushi/tagbar'
"____________________________________________________________________

" Plugin for colorshemes
Plug 'flazz/vim-colorschemes'
"____________________________________________________________________

"Lightweight Vim plugin to enhance the tabline including numbered tab
"page labels; it's written entirely in Vim script.
Plug  'webdevel/tabulous'
"____________________________________________________________________

"VimDevIcons adds filetype glyphs (icons) to other plugins such as 
"NERDTree, vim-airline, CtrlP, powerline, unite, lightline.vim, 
"vim-startify, vimfiler, and flagship.
Plug 'ryanoasis/vim-devicons'
"____________________________________________________________________

"ALE (Asynchronous Lint Engine) is a plugin for providing linting 
"in NeoVim and Vim 8 while you edit your text files.
Plug 'w0rp/ale'
"____________________________________________________________________
"
"Format code with one button press.
Plug 'Chiel92/vim-autoformat'
"____________________________________________________________________

"YouCompleteMe is a fast, as-you-type, fuzzy-search code completion 
"engine for Vim.
Plug 'Valloric/YouCompleteMe'
"____________________________________________________________________
"Supertab is a vim plugin which allows you to use <Tab> for all your
"insert completion needs (:help ins-completion).
Plug 'ervandew/supertab'
"____________________________________________________________________

"UltiSnips is the ultimate solution for snippets in Vim. It has tons
"of features and is very fast.
Plug 'SirVer/ultisnips'
"____________________________________________________________________

"A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'
"____________________________________________________________________
"
call plug#end()

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PLUGIN CONFIGURATIONS %%%%%%%%%%%%%%%%%
"____________________________________________________________________
"Airline

let g:airline_theme='onedark'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#enabled = 1
"____________________________________________________________________
"Super Tab

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
"____________________________________________________________________
" Git Gutter

let g:gitgutter_sign_added = 'Ⓐ '
let g:gitgutter_sign_modified = 'Ⓜ '
let g:gitgutter_sign_removed = 'Ⓓ '
"____________________________________________________________________
"YouCompleteMe

let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
"____________________________________________________________________
"UtilSnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"____________________________________________________________________
"CntlP

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }

let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"____________________________________________________________________

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%HOTKEYS%%%%%%%%%%%%%%%%%%%%%%%%%%%%

noremap <F3> :Autoformat<CR>
nnoremap <F4> :CtrlPSmartTabs<CR>
nmap <F5> <Plug>NumberCycle
nmap <F8> :TagbarToggle<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nmap <silent> <C-n> :tabnew <bar> :Startify <CR>
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%EDITOR SETTINGS %%%%%%%%%%%%%%%%%%%%

" Colorsheme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
    set termguicolors
endif

set nocompatible

syntax on

filetype plugin on

set path+=**

set wildmenu

set encoding=utf-8

"Show invisible chars
set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:•

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"Line numbers visible
set number


let &t_SI .= "\<Esc>[5 q"
"replace mode - underline
let &t_SR .= "\<Esc>[4 q"
"common - block
let &t_EI .= "\<Esc>[3 q"

colorscheme onedark
