vim.cmd('colorscheme gruvbox')          -- Activa tema de Gruvbox

-- Directorio plugins
require('plugins')

-- Direcctorio 'options'
require('options.maps')                 -- Configuracion de: atajos de teclado
require('options.nvimoptions')          -- Configuracion de: opciones de nevim

-- Directorio 'configs'
require('configs.bufferline')           -- Configuracion de: linea de bufer (bufferline)
require('configs.lualine')              -- Configuracion de: inea de estado (lualine)
require('configs.treesitter')           -- Configuracion de: resaltado de sintaxis (treesitter)
require('configs.nvimtree')             -- Configuracion de: arbol de directorios (nvimtree) 
require('configs.autopairs')            -- Configuracion de: autopairs
require('configs.indentline')           -- Configuracion de: lineas de identado (indentline)
require('configs.telescope')            -- Configuracion de: buscador de palabras (telescope)
require('configs.cmp')

