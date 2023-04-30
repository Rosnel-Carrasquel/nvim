vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10
vim.o.fileencoding = 'utf-8'
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 4
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.mouse = "a"
vim.wo.wrap = false
vim.wo.number = true                            -- Numeros de linea
vim.wo.relativenumber = true                    -- Numero relativo de linea
vim.o.cursorline = true
vim.wo.signcolumn = "yes"
vim.o.tabstop = 8
vim.bo.tabstop = 8
vim.o.softtabstop = 0
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4                           -- numeros de espacion con la Identacion
vim.o.autoindent = true                         -- nos permitira activar la autoidentacion
vim.bo.autoindent = true
vim.o.expandtab = true                          -- nos permitira las tabulaciones
vim.bo.expandtab = true
