local utils = require("utils.core")

local modules = {
  "formatting",
  "configure",
  "custom",
}

utils.load_modules("lsp", modules)
