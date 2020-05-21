set number

" color molokai " vividchalk
syntax enable

" set tabstop=4       	" number of visual spaces per TAB
set softtabstop=2   	" number of spaces in tab when editing
set expandtab       	" tabs are spaces

set cursorline      	" highlight current line
set wildmenu        	" visual autocomplete for command menu

set lazyredraw	    	" redraw only when we need to.
set showmatch       	" highlight matching [{()}]

set incsearch       	" search as characters are entered
set hlsearch        	" highlight matches
" turn off search highlight
" nnoremap <leader><space> :nohlsearch<CR>

set foldenable       	" enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent    " fold based on indent level

" binding gV for lighlight last inserted text
nnoremap gV `[v`]

" press u key to use gundotoggle
nnoremap <leader>u :GundoToggle<CR>

" edit vimrc ans load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" save session press key s
nnoremap <leader>s :mksession<CR>

" ctrlp Settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" ag.vim 
set runtimepath^=~/.vim/bundle/ag
" set runtimepath^=~/.vim/bundle/dracula

" ag.vim + ctrlp combined
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

syntax on
"color dracula
color desert

set ruler laststatus=2 title

set autoindent
set smartindent
set cindent
" filetype plugin indent on
set shiftwidth=4

set pastetoggle=<f5>

" pathogen
execute pathogen#infect()

" syntastic settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
