" Prueba
" Plugins
" El gestor de plugins instalado es vim-plug https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/neco-syntax'
Plug 'mattn/emmet-vim'
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
call plug#end()
" Fin plugins

" Configuraciones
set termguicolors  " Activa true colors en la terminal

colorscheme onedark  " Activa tema onedark

set background=dark  " Fondo del tema: dark/light

let g:airline_powerline_fonts = 1 " Cargar fuente Powerline y símbolos (ver nota)

let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal'] " No mostrar buffers especificos

let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*'] " No mostrar buffers especificos

let g:deoplete#enable_at_startup = 1 " Activar deoplete al iniciar vim

" Mostrar numero de linea
set number

" Mostrar titulo del archivo
set title

" Integracion del mouse
set mouse=a

" Resaltar linea actual
set cursorline

" Quitar ajuste de linea
set nowrap

" Indentacion + plug indentLine
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab

" No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set smartcase

" Corregir palabras usando diccionarios en inglés y español
set spelllang=en,es

" Configuracion de Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
