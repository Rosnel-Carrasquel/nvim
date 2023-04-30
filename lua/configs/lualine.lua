-- Eviline config for lualine
-- Link: https://github.com/nvim-lualine/lualine.nvim/blob/master/examples/evil_lualine.lua
-- Author: shadmansaleh
-- Credit: glepnir

-- INICIO (Eviline) {{
local lualine = require('lualine')

-- Tabla de colores para highlights
-- stylua: ignore
local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Configuracion
local config = {
  options = {
    -- Deshabilitar secciones y separadores de componentes
    component_separators = '',
    section_separators = '',
    theme = {
      -- Vamos a usar lualine_c y lualine_x como sección izquierda y derecha.
      -- ambos están resaltados por el tema c. Así que solo estamos configurando
      -- el aspecto predeterminado o la línea de estado
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- estos son para eliminar los valores predeterminados
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- Estos se llenarán más tarde.
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- estos son para eliminar los valores predeterminados
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserta un componente en lualine_c en la sección izquierda
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserta un componente en lualine_x en la sección derecha
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
    return '▊'
  end,
  color = { fg = colors.blue }, -- Establece el resaltado del componente
  padding = { left = 0, right = 1 }, -- No necesitamos espacio antes de esto.
}

ins_left {
  -- componente de modo
  function()
    return ''
  end,
  color = function()
    -- cambio automático de color según el modo neovims
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
}

ins_left {
  -- componente de tamaño de archivo
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

-- Inserte la sección media. Puede hacer cualquier cantidad de secciones en neovim :)
-- para lualine es cualquier número mayor que 2
ins_left {
  function()
    return '%='
  end,
}

ins_left {
  -- Nombre del servidor Lsp.
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' LSP:',
  color = { fg = '#ffffff', gui = 'bold' },
}

-- Agregar componentes a las secciones correctas
ins_right {
  'o:encoding', -- componente de opción igual que &encoding en viml
  fmt = string.upper, -- Tampoco estoy segura de por qué está en mayúsculas;)
  cond = conditions.hide_in_width,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = false, -- Creo que los íconos son geniales, pero Eviline no los tiene. suspiro
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  --Soy yo o el símbolo para nosotras modificadas realmente raro
  symbols = { added = ' ', modified = '柳 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

ins_right {
  function()
    return '▊'
  end,
  color = { fg = colors.blue },
  padding = { left = 1 },
}

-- Ahora no olvides inicializar lualine
lualine.setup(config)
-- }} FIN (Eviline) 
