vim.cmd[[
nnoremap q :q<CR>
nnoremap <C-q> :q!<CR>
nnoremap <C-w> :wq<CR>
nnoremap w :w<CR>
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><s-TAB> :BufferLineCyclePrev<CR>
nnoremap <C-a> :NvimTreeToggle<CR>
nnoremap <A-w> <C-w>l
nnoremap <A-q> <C-w>h
nnoremap <A-v> :vsplit<CR>
nnoremap e :Telescope find_files<CR>
nnoremap <C-e> :Telescope<CR>
]]

