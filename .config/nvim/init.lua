-- init.lua

-- Load custom options, plugins, and color scheme configurations
require "options"  -- Custom vim options
require "plugins"  -- Plugin management and configuration

-- Enable syntax highlighting and advanced filetype detection
vim.cmd('syntax on')  -- Turn on syntax highlighting
vim.cmd('filetype plugin indent on')  -- Enable filetype-specific plugins and indentation

-- Center screen after half-page scrolls
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

-- Additional Keymaps (Optional, feel free to modify)
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true, silent = true }) -- Center screen on search forward
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true, silent = true }) -- Center screen on search backward

-- Performance tweaks
vim.o.lazyredraw = true -- Improve performance by not redrawing during macros/scripts

