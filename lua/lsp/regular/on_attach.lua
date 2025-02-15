local utils = require("mappings.utils")

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  -- Mappings
  local opts = { noremap = true, silent = true }
  buf_set_keymap("n", "gd", utils.lua_cmd("vim.lsp.buf.definition()"), opts)
  buf_set_keymap("n", "gD", utils.lua_cmd("vim.lsp.buf.declaration()"), opts)

  buf_set_keymap("n", "<localleader>pwa", utils.lua_cmd("vim.lsp.buf.add_workspace_folder()"), opts)
  buf_set_keymap("n", "<localleader>pwr", utils.lua_cmd("vim.lsp.buf.remove_workspace_folder()"), opts)
  buf_set_keymap("n", "<localleader>pwl", utils.lua_cmd("print(vim.inspect(vim.lsp.buf.list_workspace_folders()))"), opts)
  buf_set_keymap("n", "<localleader>pt",  utils.lua_cmd("vim.lsp.buf.type_definition()"), opts)
  buf_set_keymap("n", "<localleader>pc",  utils.lua_cmd("vim.lsp.buf.code_action()"), opts)
  buf_set_keymap("n", "<localleader>pr",  utils.lua_cmd("vim.lsp.buf.rename()"), opts)
  buf_set_keymap("n", "<localleader>r",   utils.lua_cmd("vim.lsp.buf.rename()"), opts)
  buf_set_keymap("n", "<space>,f",        utils.lua_cmd("vim.lsp.buf.format({ async = true })"), opts)

  buf_set_keymap("n", "<leader>e", utils.lua_cmd("vim.diagnostic.open_float()"), opts)
  buf_set_keymap("n", "[d",        utils.lua_cmd("vim.diagnostic.goto_prev()"), opts)
  buf_set_keymap("n", "]d",        utils.lua_cmd("vim.diagnostic.goto_next()"), opts)
  buf_set_keymap("n", "[e",        utils.lua_cmd("vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })"), opts)
  buf_set_keymap("n", "]e",        utils.lua_cmd("vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })"), opts)
  buf_set_keymap("n", "<space>q",  utils.lua_cmd("vim.diagnostic.setloclist()"), opts)
end

return on_attach
