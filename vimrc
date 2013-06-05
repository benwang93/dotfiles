set nocompatible            " Get rid of vi compatibility
set nowrap                  " Don't wrap text across lines
set number                  " Display line numbers
set autoindent              " Auto-indent
set tabstop=4               " Tab width
set shiftwidth=4            " Shift blocks this much
set t_Co=256                " Enable 256-color mode

" If it's a Makefile, don't fill tabs with spaces
if ( expand('%:t') != "Makefile" )
    set expandtab           " Use spaces, not tabs
endif

syntax enable               " Enable syntax highlighting
filetype plugin indent on   " Filetype detection
