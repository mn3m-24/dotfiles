-- Basic Settings
vim.opt.number = true              -- Show line numbers
vim.opt.relativenumber = true      -- Relative line numbers
vim.opt.mouse = 'a'                -- Enable mouse
vim.opt.ignorecase = true          -- Case insensitive search
vim.opt.smartcase = true           -- Unless capital in search
vim.opt.hlsearch = false           -- Don't highlight searches
vim.opt.wrap = false               -- Don't wrap lines
vim.opt.breakindent = true         -- Wrapped lines indent
vim.opt.tabstop = 4                -- Tabs are 4 spaces
vim.opt.shiftwidth = 4             -- Indent with 4 spaces
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.termguicolors = true       -- True color support
vim.opt.signcolumn = 'yes'         -- Always show sign column
vim.opt.updatetime = 250           -- Faster completion
vim.opt.timeoutlen = 300           -- Time for mapped sequence
vim.opt.splitright = true          -- Vertical splits to right
vim.opt.splitbelow = true          -- Horizontal splits below
vim.opt.cursorline = true          -- Highlight current line
vim.opt.scrolloff = 8              -- Lines above/below cursor
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard

-- Basic Key Mappings
vim.g.mapleader = ' '              -- Set space as leader key
vim.g.maplocalleader = ' '

-- Save file
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

-- Clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>')

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Bootstrap lazy.nvim
-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
--   vim.fn.system({
--     "git",
--     "clone",
--     "--filter=blob:none",
--     "https://github.com/folke/lazy.nvim.git",
--     "--branch=stable",
--     lazypath,
--   })
-- end
-- vim.opt.rtp:prepend(lazypath)
--
-- -- Setup lazy.nvim
-- require("lazy").setup("plugins")
