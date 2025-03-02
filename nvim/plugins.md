# Plugins

My plugin manager of choice is [vim-plug](https://github.com/junegunn/vim-plug)
which is a minimalist Vim plugin manager.

## Installation

This will download the last version of vim-plug script and will save it under
`~/.config/nvim/autoload/plug.vim`.

```vim
if !filereadable(expand('~/.config/nvim/autoload/plug.vim'))
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
```

## List of Plugins

This is where the plugins will be clone to and load from.

```vim
call plug#begin(expand('~/.config/nvim/plugged'))
```

### Games

#### Tetris

```vim
Plug 'vim-scripts/TeTrIs.vim'
```

### IDE like plugins

Sometimes you want a quick access to a terminal window. It's awesome to use a
floating term without use a tmux pane or something else.

```vim
Plug 'voldikss/vim-floaterm'
```

```vim
Plug 'majutsushi/tagbar'
""" Tagbar
let g:tagbar_autofocus = 1

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'RRethy/vim-illuminate'
Plug 'terryma/vim-multiple-cursors'

Plug 'psliwka/vim-smoothie'
```

This plugin causes all trailing whitespace characters to be highlighted. The
strip whitespace on save is activated so it asks before saving.

```vim
Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
```

This plugin aim is to integrate Direnv and Vim. Because Vim can shell out to
other tools it's nice if the environment is in sync with the usual shell.

It also adds syntax highlighting for `.envrc` files.

```vim
Plug 'direnv/direnv.vim'
```

#### Secure Modelines

```vim
Plug 'ciaranm/securemodelines'
```

### Grammar and spelling

```vim
Plug 'dpelle/vim-LanguageTool'
```

### Auto-completions

#### Ale

```vim
" Plug 'dense-analysis/ale'

" let g:ale_fixers = { 'elixir': ['mix_format'] }

" let g:ale_fix_on_save = 1

" Error and warning signs.
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚠'

" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
```

```vim
Plug 'neomake/neomake'
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
```

#### COC

```vim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
```

#### Switch

Really useful to toggle between values like boolean values or expressions.

```vim
Plug 'AndrewRadev/switch.vim'
```

#### **fz**f

> fzf is a general-purpose command-line fuzzy finder

It's really powerful and it will be available system wise.

```vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" fzf {{{
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-h': 'split',
  \ 'ctrl-v': 'vsplit' }
" }}}
```

```vim
""" Syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1


"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Org-Mode
Plug 'jceb/vim-orgmode'
Plug 'hsitz/VimOrganizer'
Plug 'vim-scripts/calendar.vim--Matsumoto'

" Git
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinPos = "right"
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 40
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
let g:NERDTreeDirArrowExpandable = nr2char(8200)
let g:NERDTreeDirArrowCollapsible = nr2char(8200)

" Vim Terminal
" Plug 'Shougo/deol.nvim'

" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kjssad/quantum.vim'

" Color Scheme
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
```

### Languages

#### Elixir

```vim
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
```

```vim
" C
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'
" Plug 'justinmk/vim-syntax-extra', { 'for': ['c', 'cpp', 'flex'] }

" Go
Plug 'zchee/deoplete-go', { 'do': 'make'}

let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Haskell
" Plug 'dag/vim2hs'
Plug 'eagletmt/neco-ghc'
Plug 'neovimhaskell/haskell-vim'
Plug 'pbrisbin/vim-syntax-shakespeare'

"""" vim-haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" HTML
Plug 'tpope/vim-haml'
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'

" JavaScript
Plug 'jelera/vim-javascript-syntax'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

""" vim-prettier
let g:prettier#config#print_width = 40   " max line length that prettier will wrap on
let g:prettier#config#tab_width = 2      " number of spaces per indentation level
let g:prettier#config#use_tabs = 'false' " use tabs over spaces

" Julia
Plug 'JuliaEditorSupport/julia-vim'

" Markdown
Plug 'junegunn/goyo.vim' " distraction free writing
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-emoji'


" Plug 'plasticboy/vim-markdown'
let g:vim_markdown_math = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_frontmatter = 1
"" let g:vim_markdown_folding_disabled = 0

" Python
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}

" Ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'

" CSS
Plug 'stephenway/postcss.vim'
```

This is necessary in order to close where there are no more plugins to install.

```vim
call plug#end()
```

# Python

Set python locations.

```vim
let g:python_host_prog = "/bin/python2"
let g:python3_host_prog = "/bin/python3"
```

