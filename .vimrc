filetype plugin indent on " Start eg. Go plugin on Go files

call plug#begin()

" NVim specific
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " http://crispgm.com/page/neovim-is-overpowering.html
Plug 'nvim-treesitter/playground'
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/lsp_extensions.nvim'
"Plug 'nvim-lua/completion-nvim'

"Plug 'hrsh7th/nvim-compe'

"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

" Languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }        " GoLang
"Plug 'godoctor/godoctor.vim'                             " GoLang - Some refactoring tools
"1Plug 'ollykel/v-vim'                                    " VLang
Plug 'rust-lang/rust.vim'                                 " RustLang
Plug 'vim-scripts/indentpython.vim'                       " PythonLang PEP8 auto-indents
"Plug 'JesseKPhillips/d.vim'                              " DLang syntax
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}    " Python sexy hightlighting
"Plug 'neovimhaskell/haskell-vim'
Plug 'ziglang/zig.vim'                                    " ZigLang
"Plug 'timonv/vim-cargo'                                  " RustLang cargo commands
"Plug 'janet-lang/janet.vim'                              " JanetLang language
"Plug 'jakwings/vim-pony'                                 " Ponylang
"Plug 'zah/nim.vim'                                       " Nim
Plug 'alaviss/nim.nvim'                                   " Nim (better?)
Plug 'OmniSharp/omnisharp-vim'                            " C# omnisharp
Plug 'dart-lang/dart-vim-plugin'                          " Dart/Flutter?

" Visuals and tools
"Plug 'vim-airline/vim-airline'                         " sexy bottom line - replaced by lightline
Plug 'itchyny/lightline.vim'                            " cute bottom line
Plug 'scrooloose/nerdtree'                              " file exporer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " FZF utility
Plug 'junegunn/fzf.vim'                                 " hopefully better than ctrlp
Plug 'majutsushi/tagbar'                                " Shows exuberant-tags
Plug 'airblade/vim-gitgutter'                           " display git +- in gutter
Plug 'junegunn/goyo.vim'                                " distraction-free mode
Plug 'vimwiki/vimwiki'
Plug 'cstrahan/vim-capnp'                               " Capnproto highlighting

" Checkers and autocompleters
Plug 'dense-analysis/ale'                               " Check syntaxes and LSP
Plug 'prabirshrestha/asyncomplete.vim'                  " Autocomplete for alavaiss/nim/overall?

" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'alexanderjeurissen/lumiere.vim'
Plug 'rainglow/vim'
Plug 'vim-scripts/busybee'
Plug 'croaker/mustang-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'woodyZootopia/flatwhite-vim'
Plug 'jacoborus/tender.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'fenetikm/falcon'
Plug 'alexanderjeurissen/lumiere.vim'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'owozsh/amora'
Plug 'blackbirdtheme/vim'

" All of your Plugs must be added before the following line
call plug#end()
"
" ============
"
" General Feel
"
" ============

syntax on                      " enable syntax highlighting
let mapleader = ","            " leader key
set autoindent                 " use current indent on newline
set backspace=2                " make backspace work (???)
set cindent                    " indent rules come from C
set colorcolumn=85             " highlight column
set hlsearch                   " highlight all search results
set ignorecase                 " do case insensitive search
set incsearch                  " show incremental search results as you type
set list                       " highlights listchars v (?)
set listchars=tab:\.\ ,trail:• " highlight these in special ways
"set mouse=a                    " can use mouse to click on things
set nocompatible               " 'NVim is always nocompatible' (???)
set number                     " display line number
set paste                      " pasting works
set statusline+=%#warningmsg#
set statusline+=%*
"set noswapfile                " disable swap file
"set smarttab                   " something about spaces/tabs preceeding a line
"set tabstop=4 softtabstop=4 shiftwidth=4
"set expandtab    " use spaces
"set noexpandtab  " use tabs
set ts=4  " expand TAB to X spaces

set completeopt=menuone,noinsert,noselect,preview
set updatetime=300   " how long before eg. CursorHold triggers

" ============
"
" General Look
"
" ============

set termguicolors   " 24 bit RGB colors in TUI
"let g:lightline = { 'colorscheme': 'jellybeans' }
let g:lightline = {'colorscheme': 'spaceduck' }
let ayucolor="dark"

"let g:badwolf_darkgutter=1

" Visual
"colorscheme ayu                         " is okay
colorscheme blackbird                         " is okay
"colorscheme gruvbox
"colorscheme PaperColor
"colorscheme mustang
"colorscheme tender
"colorscheme badwolf                    " my favorite
"colorscheme BusyBee
"colorscheme jellybeans                 " also good
"colorscheme flatwhite
"colorscheme afterglow
"colorscheme falcon
"colorscheme lumiere
"colorscheme one
"colorscheme nord
"colorscheme spaceduck                  " also good
"colorscheme amora

set background=dark                    " force always dark background
hi Normal guibg=#050505

":highlight Normal ctermbg=236          " don't be so dark
":highlight NonText ctermbg=236         " don't be so dark
:highlight! link SpecialKey Normal      " do not highlight tab-indent
":highlight ColorColumn ctermbg=lightgrey guibg=lightgrey  " highlight the long-line

set guifont=Noto\ Mono\ Regular\ 11

" =================================
"
" Keybindings
"
" =================================

:nnoremap <C-g> :NERDTreeToggle<CR>
:nnoremap <C-t> :Tagbar<CR>
:nnoremap <C-y> :Goyo<CR>
":nnoremap <C-P> :FZF<CR>
:nnoremap <A-h> :vertical-resize +2<CR>
:nnoremap <A-l> :vertical-resize -2<CR>
:nnoremap <A-k> :resize -2<CR>
:nnoremap <A-j> :resize +2<CR>

" == ALE ==
":nnoremap <leader>g :ALEGoToDefinition<CR>
":nnoremap <leader>G :ALEGoToTypeDefinition<CR>
":nnoremap <leader>r :ALEFindReferences<CR>
":nnoremap <leader>h :ALEHover<CR>
":nnoremap <leader>n :ALENext<CR>

" Files is from fzf.vim
:nnoremap <C-p> :Files<CR>
" Rg is from fzf.vim
:nnoremap <leader>g :Rg<CR>

":nnoremap <leader>t :lua vim.lsp.buf.hover()<CR>
":nnoremap <leader>i :lua vim.lsp.buf.implementation()<CR>
":nnoremap <leader>D :lua vim.lsp.buf.declaration()<CR>
":nnoremap <leader>d :lua vim.lsp.buf.definition()<CR>
":nnoremap <leader>r :Telescope lsp_references<CR>
":nnoremap <leader>s :Telescope lsp_document_symbols<CR>
":nnoremap <leader>F :Telescope lsp_code_actions<CR>

" ===================
"
" General Plugin Conf
"
" ===================


" --------
" NVim LSP
" --------
"set omnifunc=v:lua.vim.lsp.omnifunc
"let g:completion_enable_auto_popup = 1
"autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
"autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
"\ lua require'lsp_extensions'.inlay_hints{ prefix = ' # ', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

" --------
" NVim Compe
" --------
"let g:compe = {}
"let g:compe.enabled = v:true
"let g:compe.autocomplete = v:true
"let g:compe.debug = v:false
"let g:compe.min_length = 1
"let g:compe.preselect = 'enable'
"let g:compe.throttle_time = 80
"let g:compe.source_timeout = 200
"let g:compe.incomplete_delay = 400
"let g:compe.max_abbr_width = 100
"let g:compe.max_kind_width = 100
"let g:compe.max_menu_width = 100
"let g:compe.documentation = v:true
"
"let g:compe.source = {}
"let g:compe.source.path = v:true
"let g:compe.source.buffer = v:true
"let g:compe.source.calc = v:true
"let g:compe.source.nvim_lsp = v:true
"let g:compe.source.nvim_lua = v:true
"let g:compe.source.vsnip = v:true
"let g:compe.source.ultisnips = v:true


" -------
" asyncomplete
" -------
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 1

" --------
"   Ale
" --------
"set omnifunc=ale#completion#OmniFunc

highlight ALEErrorSign guifg=Red
highlight ALEWarningSign guifg=Yellow
let g:ale_sign_error = 'EE'
let g:ale_sign_warning = 'WW'

let g:ale_fix_on_save = 1
let g:ale_completions_enabled = 1
let g:ale_linters = {}
let g:ale_fixers = {}

" --------
"   Goyo
" --------
let g:goyo_width = 101

" --------
"   FZF
" --------
" do not show hidden files (by rg rules/gitignore et al)
let $FZF_DEFAULT_COMMAND = 'rg --files'

" =================
"
" Language Specific
"
" =================

" --------
"  DLang
" --------
let g:ale_linters.d = ['dls', 'dmd']
let g:ale_d_dls_executable = '/home/tanel/.dub/packages/.bin/dls-latest/dls'   " setting this makes ALE auto-use this
let g:syntastic_d_compiler = 'ldc2'
"let g:lsc_server_commands = {
"\  'd': {
"\    'command': '/home/tanel/.dub/packages/.bin/dls-latest/dls',
"\    'suppress_stderr': v:false,
"\  }
"\}

" --------
"  VLang
" --------
au FileType vlang nnoremap <leader>f :%!v fmt %<CR>

" --------
"  GoLang
" --------
let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor
au filetype go inoremap <buffer> <C-e> :GoErrCheck<CR>

" -------
" C#
" -------
autocmd BufNewFile,BufRead *.axaml set syntax=xml
au FileType xml setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

au FileType cs nnoremap <leader>m :OmniSharpDocumentation<CR>
au FileType cs setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
"au CursorHold *.cs OmniSharpTypeLookup
"au CursorHold *.cs OmniSharpDocumentation

"let g:ale_linters.cs = ['OmniSharp']
let g:ale_fixers.cs = ['dotnet-format', 'remove_trailing_lines', 'trim_whitespace']
"let g:ale_cs_dotnet_format_options = 'yle'
let g:OmniSharp_selector_ui = 'fzf'

augroup OmniSharpIntegrations
  autocmd!
  autocmd User OmniSharpProjectUpdated,OmniSharpReady call lightline#update()
augroup END

let g:OmniSharp_popup_position = 'peek'
let g:OmniSharp_popup_options = {'winhl': 'Normal:NormalFloat'}
let g:OmniSharp_highlight_groups = {'ExcludedCode': 'NonText'}
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_timeout = 10

" --------
"  Python
" --------
au FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
let python_highlight_all=1
let g:ale_linters.python = ['mypy', 'pyright', 'vulture']

" --------
"   Rust
" --------
" RUN: rustup component add rustfmt
" RUN: rustup component add clippy --toolchain nightly-x86_64-unknown-linux-gnu

au Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc

let g:rustfmt_autosave = 1
"let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
"let g:ale_linters.rust = ['cargo']  " we override it with clippy
"let g:ale_fixers.rust = ['rustfmt']
let g:ale_linters.rust = ['clippy', 'cargo']
let g:ale_fixers.rust = []

"-- Enable rust_analyzer
"--on_attach=require'completion'.on_attach,
"lua <<EOF
"require'lspconfig'.rust_analyzer.setup{ 
"	settings = {
"		['rust-analyzer'] = {
"			checkOnSave = {
"				command = "clippy"
"			}
"		}
"	}
"}

"-- Enable diagnostics
"vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
"  vim.lsp.diagnostic.on_publish_diagnostics, {
"    virtual_text = true,
"    signs = true,
"    update_in_insert = true,
"  }
")
"EOF

" --------
"   Dart
" --------

autocmd FileType dart setlocal tabstop=2 softtabstop=2 shiftwidth=2 textwidth=79 expandtab autoindent fileformat=unix
autocmd FileType dart call DartToggleFormatOnSave()

" --------
"   Zig
" --------
let g:zig_fmt_autosave = 1

" --------
"   Pony
" --------
autocmd FileType pony setlocal tabstop=2 softtabstop=2 shiftwidth=2 textwidth=79 expandtab autoindent fileformat=unix

" --------
"   Nim
" --------
"au filetype nim nnoremap <leader>t :NimTypeOf<CR>
"au filetype nim nnoremap <leader>r :NimReferences<CR>
"autocmd FileType nim set nofoldenable

"au User asyncomplete_setup call asyncomplete#register_source({
"    \ 'name': 'nim',
"    \ 'whitelist': ['nim'],
"    \ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}
"    \ })
let g:ale_linters.nim = ['nimlsp', 'nimcheck']
let g:ale_fixers.nim = ['nimpretty']

" ---------
"  Haskell
" ---------
au filetype haskell call UseSpaces()


" =========================
"
" Helpful general functions
"
" =========================

function! UseTabs()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
  set autoindent    " Copy indent from current line when starting a new line (ai).
endfunction

function! UseSpaces()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction

" ---------------------------------------
" Desc: Do intelligent colorscheme change
" Example: :Colsch <scheme> 
" https://github.com/altercation/solarized/issues/102#issuecomment-275269574
" ---------------------------------------

if !exists('s:known_links')
  let s:known_links = {}
endif

function! s:Find_links() " {{{1
  " Find and remember links between highlighting groups.
  redir => listing
  try
    silent highlight
  finally
    redir END
  endtry
  for line in split(listing, "\n")
    let tokens = split(line)
    " We're looking for lines like "String xxx links to Constant" in the
    " output of the :highlight command.
    if len(tokens) == 5 && tokens[1] == 'xxx' && tokens[2] == 'links' && tokens[3] == 'to'
      let fromgroup = tokens[0]
      let togroup = tokens[4]
      let s:known_links[fromgroup] = togroup
    endif
  endfor
endfunction

function! s:Restore_links() " {{{1
  " Restore broken links between highlighting groups.
  redir => listing
  try
    silent highlight
  finally
    redir END
  endtry
  let num_restored = 0
  for line in split(listing, "\n")
    let tokens = split(line)
    " We're looking for lines like "String xxx cleared" in the
    " output of the :highlight command.
    if len(tokens) == 3 && tokens[1] == 'xxx' && tokens[2] == 'cleared'
      let fromgroup = tokens[0]
      let togroup = get(s:known_links, fromgroup, '')
      if !empty(togroup)
        execute 'hi link' fromgroup togroup
        let num_restored += 1
      endif
    endif
  endfor
endfunction

function! s:AccurateColorscheme(colo_name)
  call <SID>Find_links()
  exec "colorscheme " a:colo_name
  call <SID>Restore_links()
endfunction

command! -nargs=1 -complete=color Colsch call <SID>AccurateColorscheme(<q-args>)

"
" END COLSCH
