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
map<C-q> :wq<CR>
map<C-a> gg<S-v><S-g>

map!<F7> <ESC>:w<CR>
map!<F8> <ESC>:wq<CR>
map!<F9> <ESC>:!cargo fmt<CR>
map!<F10> <ESC>:!cargo clippy<CR>
map!<F11> <ESC>:!cargo build<CR>
map!<F12> <ESC>:!cargo run<CR>
map!<C-s> <ESC>:w<CR>i
map!<C-q> <ESC>:wq<CR>
map!<C-a> <ESC>gg<S-v><S-g>

" Python
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/opt/anaconda/bin/python3'
