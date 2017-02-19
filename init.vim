"%%%%%%%%%%%%%%%%%%%% INSTALED PLUGINS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

call plug#begin('~/.local/share/nvim/plugged')
"Plugins for install must be here

"/// Plugin for started page
Plug 'mhinz/vim-startify'

"/// Plugin for multicomments
Plug 'scrooloose/nerdcommenter'

"/// Filestyle
Plug 'aserebryakov/filestyle'

"/// Plugin for git
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"/// Plugin for line with short information about project
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"/// Plugin for nubers
Plug 'jcorbin/vim-number-cycle'

"/// Plugin for file finds
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidegx/ctrlp-smarttabs'

"/// Plugin for tags
Plug 'majutsushi/tagbar'

"/// Plugin for colorshemes
Plug 'flazz/vim-colorschemes'

"/// Plugin for beautiful tabs
Plug  'webdevel/tabulous'

"/// vimproc is a great asynchronous execution library
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

"/// Plugin for icons
Plug 'ryanoasis/vim-devicons'

"/// Plugins for snippets and autocomplete
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/syntastic'

"/// Plugins for languages support
Plug 'sheerun/vim-polyglot'
"######## Python
Plug 'davidhalter/jedi-vim'
"######## AngularJS
Plug 'burnettk/vim-angular'
Plug 'matthewsimo/angular-vim-snippets'
"######## CSS
Plug 'skammer/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
"######## JS
Plug 'Shutnik/jshint2.vim'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'carlitux/deoplete-ternjs'
"######## HTML
Plug 'gregsexton/matchtag'
Plug 'othree/html5.vim'
"######## Perl
Plug 'c9s/perlomni.vim'
Plug 'wolfgangmehner/perl-support'
Plug 'Chiel92/vim-autoformat'
"######## TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'quramy/tsuquyomi'
Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }

call plug#end()

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PLUGIN CONFIGURATIONS %%%%%%%%%%%%%%%%%
" Colorsheme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
    set termguicolors
endif

"************Airline

let g:airline_theme='luna'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
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

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

"************YouCompleteMe and UltiSnips compatibility, with the helper of supertab
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

"************CntlP

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

"************TypeScript
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

"************ TSUQUYOMI
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

"*********** typescript-tools
au BufRead,BufNewFile *.ts        setlocal filetype=typescript
set rtp+=<your_path_here>/typescript-tools.vim/

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% HOTKEYS %%%%%%%%%%%%%%%%%

nmap <F8> :TagbarToggle<CR>

noremap <F3> :Autoformat<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

nmap <leader># <Plug>NumberCycle

nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

nnoremap <F3> :CtrlPSmartTabs<CR>
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% STARTED SETTINGS %%%%%%%%%%%%%%%%%%%%%%%%

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
