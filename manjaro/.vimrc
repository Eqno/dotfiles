" Start
filetype plugin indent on
syntax on

" Plugs
call plug#begin('~/.vim/plugged')

" BaseOn
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'

" Rust
Plug 'rust-lang/rust.vim'

" Coc
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }

" appearance
Plug 'crusoexia/vim-monokai'
Plug 'Yggdroot/indentLine'

" status bar

" annotation
Plug 'scrooloose/nerdcommenter'

" bracket
Plug 'luochen1990/rainbow'

" file tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" show function
Plug 'majutsushi/tagbar'

" c++ highlight
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

" PlugSetting
" Rust
let g:rustfmt_autosave = 1

" HotKey
map<F7> :w<CR>
map<F8> :wq<CR>
map<F9> :w<CR>:!cargo fmt<CR>
map<F10> :w<CR>:!cargo clippy<CR>
map<F11> :w<CR>:!cargo build<CR>
map<F12> :w<CR>:!cargo run<CR>
map<C-s> :w<CR>
map<C-q> :q<CR>
map<C-a> gg<S-v><S-g>
map<C-x> "+yy
map<C-w> :wq<CR>

map!<F9> <ESC>:!cargo fmt<CR>
map!<F10> <ESC>:!cargo clippy<CR>
map!<F11> <ESC>:!cargo build<CR>
map!<F12> <ESC>:!cargo run<CR>
map!<C-s> <ESC>:w<CR>i
map!<C-q> <ESC>:q<CR>
map!<C-a> <ESC>gg<S-v><S-g>
map!<C-w> <ESC>:wq<CR>
map!<tab> <C-n>

vmap<tab> >gv
vmap<s-tab> <gv

" Python
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" line number
set nu

" Tab
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" appearance
" colo monokai

" annotation
let g:NERDSpaceDelims = 1
au FileType python let g:NERDSpaceDelims = 0
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" bracket
let g:rainbow_active = 1

" file tree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <F3> :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷键

" show function
let g:tagbar_width=30
nnoremap <silent> <F4> :TagbarToggle<CR>

" c++ highlight

