-- LISTA DE INSTALACION DE PLUGINS

return require('packer').startup(function(use)

    -- 1) Packer puede gestionarse a sí mismo
    use 'wbthomason/packer.nvim'                                -- Repository: https://github.com/wbthomason/packer.nvim#quickstart
  
    -- 2) Tema de neovim
    use 'morhetz/gruvbox'                                       -- Repository: https://github.com/morhetz/gruvbox
  
    -- 3) Resaltado de syntaxis
    use {'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'}                                          -- Repository: https://github.com/nvim-treesitter/nvim-treesitter
 
    -- 4) Trabaja en conjunto con treesitter
    use {'windwp/nvim-ts-autotag'}                              -- Repository: https://github.com/windwp/nvim-ts-autotag

    -- 5) Statusline o linea de estado
    use {'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons',
    opt = true }}                                               -- Repository: https://github.com/nvim-lualine/lualine.nvim  
  
    -- 6) Paréntesis de arco iris para neovim usando treesitte
    use {'p00f/nvim-ts-rainbow'}                                -- Repository: https://github.com/p00f/nvim-ts-rainbow

    -- 7) Completado automatico de llaves, corchetes y parentesis
    use {'windwp/nvim-autopairs'}                               -- Repository: https://github.com/windwp/nvim-autopairs

    -- 8) Linea de buffer
    use {'akinsho/bufferline.nvim', tag = "v3.*", 
    requires = 'nvim-tree/nvim-web-devicons'}                   -- Repository: https://github.com/akinsho/bufferline.nvim
  
    -- 9) Arbol de direcctorios
    use {'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons'}}                 -- Repository: https://github.com/nvim-tree/nvim-tree.lua
  
    -- 10) Proporciona iconos y tambien colores para cada icono
    use 'nvim-tree/nvim-web-devicons'                           -- Repository: https://github.com/nvim-tree/nvim-web-devicons
  
    -- 11) Lineas de identacion
    use 'lukas-reineke/indent-blankline.nvim'                   -- Repository: https://github.com/lukas-reineke/indent-blankline.nvim

    -- 12) Plenary 
    use 'nvim-lua/plenary.nvim'                                 -- Repository: https://github.com/nvim-lua/plenary.nvim

    -- 13) Telescope realiza búsquedas de palabras en los ficheros
    use {'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = {{'nvim-lua/plenary.nvim'}}}                     -- Repository: https://github.com/nvim-telescope/telescope.nvim 
    
    -- 14) Motor de configuracion para neovim
    use 'neovim/nvim-lspconfig'                                 -- Repository: https://github.com/neovim/nvim-lspconfig 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'                                     -- Repository: https://github.com/hrsh7th/nvim-cmp
    
    -- 15) Este pequeño complemento agrega pictogramas similares a vscode al lsp incorporado de neovim
    use 'onsails/lspkind.nvim'                                  -- Repository: https://github.com/onsails/lspkind.nvim
    
end)

