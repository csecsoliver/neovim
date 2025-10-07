
-- neovim version 0.11.4
vim.opt.nu = true        -- Show line numbers
vim.opt.relativenumber = false -- Show relative line numbers
vim.opt.tabstop = 4      -- Number of spaces in a tab
vim.opt.shiftwidth = 4   -- Number of spaces inserted for each indentation
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.smartindent = true -- Smart indentation
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.mouse = 'a'

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }




-- Preview substitutions live, as you type!
-- vim.o.inccommand = 'split'
--
-- -- Show which line your cursor is on
vim.o.cursorline = true
--
-- -- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10
--
-- -- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- -- instead raise a dialog asking if you wish to save the current file(s)
-- -- See `:help 'confirm'`
vim.o.confirm = true





require('plugins')
require('mason').setup()
require('mason-lspconfig').setup()
