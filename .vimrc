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

" show line numbers
set number

" show mode at the bottom
set showmode

" don't allow the cursor to go to the screen edge
set so=7

" always show the current position
set ruler

" Show matching brackets when text indicator is over them
set showmatch
