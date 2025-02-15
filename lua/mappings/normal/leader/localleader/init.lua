local f = require('mappings.normal.leader.localleader.f')
local l = require('mappings.normal.leader.localleader.l')
local utils = require('mappings.utils')

local localleader = {
  name = "+Local leader",
  b = "Swap with next block",
  c = "Swap with next class",
  d = {
    name = "+LSP Interop",
    c = "Outer class definition",
    f = "Outer function definition",
  },
  e = { [[:e<cr>]], "Edit file" },
  f = f,
  l = l,
  m = "Swap with next method/function",
  p = {
    name = "+LSP Pickers",
    c = "LSP Code Actions",
    e = "LSP References",
    i = "LSP Implementations",
    r = "LSP Rename",
    t = "LSP Type Definition",

    w = {
      name = "+Workspace Folders",
      a = "Add workspace folder",
      r = "Remove workspace folder",
      l = "List workspace folders",
    },
  },
  r = "Rename",
  t = {
    name = "+TableMode",
    m = "Toggle table mode",
    t = "Tableize",
  },
  ["<CR>"] = { utils.cmd "nohlsearch", "Turn off highlight" },

  B = "Swap with previous block",
  C = "Swap with previous class",
  M = "Swap with previous method/function",

  ["'"] = { utils.lua_require("femaco.edit", "edit_code_block()"), "Edit code block with FeMaco" },
}

return localleader
