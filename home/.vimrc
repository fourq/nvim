"" vim: tw=78 fdm=marker
"" Vim configuration options.
""
"" @author Jacky Alcine <me@jalcine.me>
"" @date   2013-03-03 18:24:30 UTC-05:00
"" @vcs    git://github.com/jalcine/vimrc
""
"" I take pride in my Vim configuration. Being that I'm
"" an intermediate Vim user and I try to share as much
"" as I learn, I've taken the liberty of documenting and
"" explaining the nature of my configuration.
""
"" I use the latest development version of Vim from sources.
"" The ./configure I use is the following:
"" ./configure --with-local-dir=/home/jacky/.local --prefix=/home/jacky/.local --with-python-config-dir=/usr/lib/python2.7/config --with-python3-config-dir=/usr/lib/python3/config --with-features=big --with-compiledby="Jacky Alcine <me@jalcine.me>" --disable-gtktest  --enable-cscope --disable-darwin --enable-perlinterp --enable-pythoninterp --enable-rubyinterp --enable-tclinterp --enable-luainterp --enable-fontset --enable-multibyte --enable-xim --with-mouse
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" We live in the future, don't worry about backwards
" compatibility with Vi.
set nocompatible

set lazyredraw

" We turn off file-type detection for now, this is
" required for using Vundle.
filetype off

"{{{ Plug-ins

" I use Vundle as my plug-in management system.

"" Set up Vundle.
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'benmills/vimux'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-haml'
Bundle 'mattn/zencoding-vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'othree/html5.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'tpope/vim-surround'
Bundle 'mattn/gist-vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'pangloss/vim-javascript'
Bundle 'kien/ctrlp.vim'
Bundle 'SirVer/ultisnips'
Bundle 'tomasr/molokai'
Bundle 'othree/html5.vim'
Bundle 'kaichen/vim-snipmate-ruby-snippets'
Bundle 'tisho/css-snippets-snipmate'
Bundle 'hlissner/vim-multiedit'
Bundle 'jamessan/vim-gnupg'
Bundle 'bonsaiben/bootstrap-snippets'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'mattn/webapi-vim'
Bundle 'tpope/vim-speeddating'
Bundle 'mikewest/vimroom'
Bundle 'int3/vim-extradite'
Bundle "daylerees/colour-schemes", { "rtp": "vim-themes/" }
Bundle 'mmozuras/vim-github-comment'
Bundle 'juvenn/mustache.vim'
Bundle 'FredKSchott/CoVim'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'
Bundle 'vim-perl/vim-perl'
Bundle 'flazz/vim-colorschemes'
Bundle 'skammer/vim-css-color'
Bundle 'junegunn/vim-github-dashboard'
Bundle 'jalcine/TaskList.vim'
Bundle 'jalcine/localrc.vim'
Bundle 'jalcine/vim-android'
Bundle 'jalcine/vim-snippets'
Bundle 'jalcine/cmake.vim'
Bundle 'jalcine/android-dev.vim'
"}}}

" Activate plugin detection now.
filetype plugin indent on
"}}}

" We need modelines.
set modeline

" Set my user-defined action to the comma key.
let mapleader=","

"{{{ Configuration

" We live in the future. Use UTF-8 encoding!
set encoding=utf-8

" Use visual bells instead of beeps. I use this
" since it helps a lot with tmux to inform me
" to switch over to it.
set visualbell

" Disable bells for errors.
set noerrorbells

"{{{ Spacing

" I prefer to use two spaces to represent tabs.
set tabstop=2

" In order to maintain capability, set shiftwidth 
" to the same value as tabstop.
set shiftwidth=2

" Set expandtab to the values used for tabstop
" and shiftwidth to ensure that we enter only 
" spaces, as well as enabling auto-indenting.
set expandtab ts=2 sw=2 ai

" Ensure that indentation for newly inserted text
" copies the style of that used already.
set autoindent

" Same as tabstop, setting this to 2 ensures that
" the tab stop is the same while I'm editing.
set softtabstop=2

" Ensures that <Tab>s are converted into spaces.
" We don't want any mix-ups here.
set smarttab

" I place my tags all over the place. Bring them
" to me!
set tags+=$PWD/.git/tags
set tags+=~/.tags/*.tags

" Save your work in sessions.
set sessionoptions=buffers,tabpages,winsize,curdir
"}}}

"{{{ Layout

"" Folding options

" Fold on the syntax.
set foldmethod=syntax

" Sets the width of the folding margins.
set foldcolumn=2

" Sets the minimum amount of lines needed to
" automatically initialize folding.
set foldminlines=80

" Set the title in the terminal.
set title titlelen=120 titlestring="%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)"

" Turn on the ruler, we'd like to know our whereabouts.
set ruler

" We like a stable number count.
set number 

" Ensure the visibility of the statusline.
" Required for vim-powerline.
set laststatus=2

" Trust me, Vim, we're running in a 256-colored terminal.
set t_Co=256

"}}}

"{{{ Searching

" Highlight matches found when searching.
set hlsearch

" Enable incremental searching. 
set incsearch

" Show matching and (briefly) jump to the other partner just shortly.
" Very useful when doing JavaScript or C++.
set showmatch

" We're being greedy by default.
set gdefault                         
"}}}

"{{{ Recovery

" Record whether changes were made to unsaved buffers. 
set hidden

" Automatically save my changes.
set autowriteall

" Avoid using backup files. If you commit often into
" version control, backup files shouldn't be a problem.
set nobackup

" Avoid using swap files. It's bad for memory and doesn't
" work will with HUGE files.
set noswapfile

" Set the Vim command history size to a larger number.
set history=125

" Set the undo level to a little bit higher than default.
set history=1500
"}}}

"{{{ Formatting + Wrapping

" Bind a key for pasting from the clipboard.
set pastetoggle=<F2>

" Wrap up my text, don't have the luxury (or the want) of a
" scrollbar.
set wrap

" Add a margin to the wrapped text to prevent having to STARE
" at a dead wall (I had to do this since I'm in public places a lot)
set wrapmargin=5

" A sequence of characters that define the automatic formatting
" style. I used the following:
"
"   - t: auto wrap the text according to 'textwidth'
"   - c: auto wrap comments using according to 'textwidth'
"   - r: automatically add a comment mark when hitting <Enter> 
"        in Insert mode.
"   - q: permit the formatting of comments with 'gq'.
"   - w: trailing space? [paragraph] no space? [no paragraph].
"   - n: recognize numbered lists when formatting.
"   - 2: keep the formatting of the second line.
"   - l: don't break long lines.
"   - m: break on multi-byte characters.
"   - M: don't put a space between 2 multi-byte characters.
"   - 1: don't break a line after a one-letter word. Yeah, I know.
"   - j: join comments lines when it makes sense.
set formatoptions=tcrqwnj2lvm1j

" Files that we ignore.
set wildignore=*.swp,*.pyc,*.bak,*.class
set wildignore+=build/*
set wildignore+=vendor/cache/*

" DON'T SCROLL OFF. It's a space and time.
set scrolloff=0
set sidescrolloff=0

" We a UNIX user, baby.
set fileformats=unix

" Wrap my text at 78 characters, leaving two spaces
" for 80-width terminal windows.
set textwidth=78

"}}}

"{{{ Miscellaneous

" Define the registers used for copying + pasting + yanking.
" I use the following registers:
"
"   - unnamed:      save everything to '*'
"   - unnamedplus:  save everything to '+'
set clipboard=unnamedplus

" Enable the mouse in every mode.
set mouse=a

" Enable file-type detection.
filetype on

" Enable syntax highlighting now.
syntax on

" I have a suite of color schemes, but by default I stick
" to solarized; it's light on the eyes and work on most of
" the brightness settings I use. Also, make the background
" light, it's so much easier to read. I place this after
" the Vundle loading because it'd be safe enough to turn on
" syntax and file type highlighting.
set background=dark
colorscheme molokai

" Show me the line I'm working on.
set cursorline

" Do this when I hit <Backspace>
set backspace=indent,eol,start

"}}}

"}}}

"{{{ Key bindings.
nnoremap ; : 
nmap <silent> <leader>ev :tabe ~/.vimrc<cr> 
nmap <silent> <leader>sv :so ~/.vimrc<cr>
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
nnoremap <silent> <leader>j :setlocal nospell<CR>
nnoremap <silent> <leader>J :setlocal spell<CR>
noremap <silent> <F7> :Autoformat<CR><CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <leader>i :set list!<cr>
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
nmap <leader>pt a<C-R>=strftime("%Y-%m-%d")<CR>
imap <leader>pT <C-R>=strftime("%Y-%m-%d")<CR>
noremap <silent> <C-k> :TagbarToggle<CR>
noremap <silent> <C-N> :tabp<CR>
noremap <silent> <C-M> :tabn<CR>
nnoremap <leader>c :setlocal cursorline! cursorcolumn!<CR>
"}}}


"{{{ Plugin Configuration

"{{{
let g:author="Jacky Alcine"
let g:email="me@jalcine.me"
let g:site="jalcine.me"
"}}}

"{{{ Syntastic options
let g:syntastic_enable_signs=1
let g:syntastic_echo_current_error=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_auto_jump=0
let g:syntastic_quiet_warnings=1
let g:syntastic_cpp_compiler="clang++"
let g:syntastic_cpp_include_dirs=["$HOME/.local/include"]
let g:syntastic_cpp_check_header=1
"}}}

"{{{ CtrlP
let g:ctrlp_switch_buffer="E"
let g:ctrlp_working_path_mode="rc"
let g:ctrlp_root_markers=[".localrc"]
let g:ctrlp_open_new_file='t'
let g:ctrlp_open_multiple_files='t'
let g:ctrlp_cmd='CtrlP'
"}}}

" {{{ vim-session
let g:session_directory="~/.vim/sessions"
let g:session_default_name="default"
let g:session_autoload="no"
let g:session_autosave="yes"
let g:session_autosave_periodic="yes"
let g:session_command_aliases=1
" }}}

"{{{ Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:Powerline_symbols='fancy'
"}}}

let g:github_user="jalcine"
let g:github_dashboard= { "username" : "jalcine", "emoji" : 1 }
"}}}
"}}}
