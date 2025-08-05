-- nvim/lua/options.lua

-- Assign leader key to space
-- You can then think of <leader> in keybindings as space
vim.g.mapleader = " " -- Set leader key to Space
vim.g.maplocalleader = " "


-- Navigation (switch between buffers)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { silent = true })

-- Splits
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { silent = true })
vim.keymap.set("n", "<leader>s", ":split<CR>", { silent = true })

-- Pane navigation (window focus movement)
vim.keymap.set("n", "<leader>h", "<C-w>h", { silent = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { silent = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { silent = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { silent = true })

-- General settings
vim.opt.compatible = false  -- Disable compatibility mode for better Neovim experience
vim.opt.clipboard = 'unnamedplus'  -- Use the system clipboard
vim.opt.mouse = 'a'  -- Enable mouse support in all modes
vim.opt.updatetime = 200  -- Faster completion and CursorHold events
vim.opt.termguicolors = true  -- Enable 24-bit RGB color in the terminal
vim.o.background = "dark"         -- Set background to dark
vim.opt.lazyredraw = true  -- Improve performance during macros and scripts

-- Colorscheme setting
vim.cmd("colorscheme sorbet")

-- Interface settings
vim.opt.number = true  -- Show line numbers
vim.opt.relativenumber = true  -- Show relative line numbers
-- vim.opt.scrolloff = 8  -- Keep 8 lines visible above/below cursor
vim.opt.signcolumn = 'yes'  -- Always show the sign column
-- vim.opt.wrap = false  -- Disable line wrapping for better code visibility
-- vim.opt.linebreak = true -- Wrap lines at word boundaries
vim.opt.cursorline = true  -- Highlight the current line

-- Uncomment and customize for your coding style
vim.wo.colorcolumn = "80"         -- Highlight column 80 for code width guidance

-- Window splitting behavior
vim.opt.splitright = true  -- Open vertical splits to the right
vim.opt.splitbelow = true  -- Open horizontal splits below

-- Indentation settings
vim.opt.cindent = true  -- Enable C-like auto-indentation
vim.opt.autoindent = true  -- Copy indent from the current line when starting a new line
vim.opt.smartindent = true  -- Automatically insert indents in some cases (e.g., after a curly brace)
vim.opt.tabstop = 4  -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4  -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true  -- Use spaces instead of tabs

-- Search settings
vim.opt.ignorecase = true  -- Ignore case in search patterns
vim.opt.smartcase = true  -- Override ignorecase if search pattern contains upper case letters
vim.opt.hlsearch = false  -- Disable highlight on search matches
vim.opt.incsearch = true  -- Show search results as you type
