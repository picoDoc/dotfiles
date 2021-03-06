" set the color up real good
syntax enable
set background=dark
colorscheme solarized

" highlight that god damn whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" highlight search terms
set hlsearch

" ignore case in search
set ignorecase

" shortcut to clear search highlighting (search for a single space)
nnoremap <Leader><space> :noh<cr>

" show mode at the bottom
set showmode

" don't allow the cursor to go to the screen edge
set so=7

" always show the current position
set ruler

" Show matching brackets when text indicator is over them
set showmatch

" Set the text width for the gq command to 80, but disable auto line breaks
set tw=80
set formatoptions-=tc

" highlight 80th col, and past 120
let &colorcolumn="80,".join(range(120,999),",")
