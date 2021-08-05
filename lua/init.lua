-- Basic settings
require "utils.handlers"
require "config"
require "plugins"

vim.g.mapleader = ","
vim.g.maplocalleader = " "

-- Plugins
require "plugins.general"

-- LSP
require "lsp"

-- Personal config
require "basic"
