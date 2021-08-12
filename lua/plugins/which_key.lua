require("which-key").setup({})

local normal = {
  ["<leader>"] = {
    b = {
      name = "+Buffers",
      d = { [[<cmd>%bdelete<cr>]], "Close buffers" },
      l = { [[<cmd>bnext<cr>]], "next buffer" },
      h = { [[<cmd>bprevious<cr>]], "prev buffer" },
    },
    c = {
      name = "+Change",
      c = { [[<cmd>lua require('telescope.builtin').colorscheme()<cr>]], "colorscheme" },
      d = { [[<cmd>cd %:h<cr>]], "Change working directory" },
      t = { [[<cmd>!ctags -R .<cr><cr>]], "Ctags" },
    },
    f = {
      name = "+Telescope",
      b = { [[<cmd>lua require('telescope.builtin').file_browser()<cr>]], "file browser" },
      d = { [[<cmd>lua require('telescope.builtin').lsp_definitions()<cr>]], "definitions" },
      f = { [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>]], "fuzzy find" },
      g = { [[<cmd>lua require('telescope.builtin').git_status()<cr>]], "Git" },
      r = { [[<cmd>lua require('telescope.builtin').lsp_references()<cr>]], "References" },
      t = { [[<cmd>lua require('telescope.builtin').tags()<cr>]], "tags" },
    },
    g = {
      name = "+Goto",
      d = "Go to definition",
      i = "Go to implementation",
      r = "Coc-References",
      y = "Go to type definition",
    },
    h = { [[<cmd>bprevious<cr>]], "Prev buffer" },
    l = { [[<cmd>bnext<cr>]], "Next buffer" },
    m = {
      name = "+MarkdownPreview",
      d = { [[<cmd>InstantMarkdownPreview<cr>]], "Preview Start" },
      s = { [[<cmd>InstantMarkdownStop<cr>]], "Preview Stop" },
    },
    n = {
      name = "+NERDTree",
      f = { [[<cmd>NERDTreeFind<cr>]], "Find" },
      n = { [[<cmd>NERDTreeToggle<cr>]], "Toggle" },
    },
    q = "Quit",
    s = {
      name = "+Spell",
      ["?"] = { [[z=]], "Spelling suggestions" },
      a = { [[zg]], "Add word to good spelling list" },
      n = { [[]s]], "Next bad spelling" },
      p = { [[[s]], "Prev bad spelling" },
      s = { [[<cmd>setlocal spell!<cr>]], "Toggle spellcheck" },
    },
    t = {
      name = "+Tabs",
      c = { [[<cmd>tabclose<cr>]], "Close tab" },
      e = { [[<cmd>tabedit <C-r>=expand("%:p:h")<cr>/]], "Edit tab" },
      m = { [[<cmd>tabmove<cr>]], "Move tab" },
      n = { [[<cmd>tabnew<cr>]], "New tab" },
      o = { [[<cmd>tabonly<cr>]], "Only tab" },
      w = "Tailwind Complete",
    },
    w = { [[<cmd>w<cr>]], "Write" },
    ["<CR>"] = { [[<cmd>nohlsearch<cr>]], "Turn off highlight" },
    [","] = {
      name = "+Utilities",
      f = { [[<cmd>lua vim.lsp.buf.formatting()<cr>]], "Format" },
      t = {
        name = "+Neoterm",
        t = { [[<cmd>NeotermToggle<cr>]], "toggle" },
        r = { [[:NeotermRun<space>]], "run" },
        x = { [[<cmd>NeotermExit<cr>]], "exit" },
      },
    },
  },
  ["<localleader>"] = {
    a = {
      name = "Add",
      O = { [[O<Esc>]], "Add new line above" },
      o = { [[o<Esc>]], "Add new line below" },
    },
    f = {
      name = "+Telescope",
      b = { [[<cmd>lua require('telescope.builtin').buffers()<cr>]], "Find Buffers" },
      c = { [[<cmd>lua require('telescope.builtin').commands()<cr>]], "commands" },
      d = { [[<cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>]], "document diagnostics" },
      f = { [[<cmd>lua require('telescope.builtin').find_files()<cr>]], "Find files" },
      g = { [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], "live grep" },
      h = { [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], "help tags" },
      l = { [[<cmd>lua require('telescope.builtin').loclist()<cr>]], "location list" },
      p = { [[<cmd>lua require('telescope.builtin').planets()<cr>]], "planets" },
      q = { [[<cmd>lua require('telescope.builtin').quickfix()<cr>]], "quickfix list" },
      r = { [[<cmd>lua require('telescope.builtin').registers()<cr>]], "registers" },
      t = { [[<cmd>lua require('telescope.builtin').treesitter()<cr>]], "treesitter" },

      s = { [[<cmd>w<cr>]], "save file" },
    },
    g = {
      name = "+Git",
      c = { [[<cmd>Git commit<cr>]], "commit" },
      f = { [[<cmd>Git fetch<cr>]], "fetch" },
      l = { [[<cmd>Git pull<cr>]], "pull" },
      p = { [[<cmd>Git push<cr>]], "push" },
      P = {
        name = "+Push",
        m = { [[<cmd>Git push -u origin main<cr>]], "main" },
        p = { [[:Git push -u origin ]], "branch" },
      },
      s = { [[<cmd>Git<cr>]], "status" },
      w = { [[<cmd>Gw<cr>]], "write" },
    },
    n = {
      name = "+Number",
      n = { [[<cmd>set nu!<cr>]], "Toggle number" },
      r = { [[<cmd>set rnu!<cr>]], "Toggle relative" },
    },
    p = { [[<cmd>Prettier<cr>]], "Prettier" },
    r = { [[<cmd>Reload<cr>]], "Reload nvim config" },
    t = {
      name = "+Tags",
      t = { [[<cmd>TagbarToggle<cr>]], "Toggle Tagbar" },
    },
    w = {
      q = { [[<cmd>wq<cr>]], "write and quit" },
    },
    x = {
      name = "+Trouble",
      d = { [[<cmd>TroubleToggle lsp_document_diagnostics<cr>]], "toggle document diagnostics" },
      l = { [[<cmd>TroubleToggle loclist<cr>]], "toggle location list" },
      q = { [[<cmd>TroubleToggle quickfix<cr>]], "toggle quickfix" },
      w = { [[<cmd>TroubleToggle lsp_workspace_diagnostics<cr>]], "toggle workspace diagnostics" },
      x = { [[<cmd>TroubleToggle<cr>]], "toggle" },
      R = { [[<cmd>TroubleToggle lsp_references<cr>]], "toggle lsp references" },
    },
  },
  ["<space>"] = {
    c = {
      name = "+Code",
      a = "Code action",
    },
    D = "Type definition",
    e = "Show line diagnostics",
    w = {
      name = "+Workspace",
      a = "Add folder",
      l = "List folders",
      r = "Remove folder",
    },
  },
  ["g"] = {
    c = "Commentary",
    D = "Go to declaration",
    d = "Go to definition",
    i = "Go to implementation",
    r = "References",
    s = "Sort motion",
  },
  ["K"] = "Hover",
  ["<C-h>"] = "Signature help",
  ["y"] = {
    o = {
      name = "+option",
      b = "background",
      c = "cursorline",
      d = "diff",
      h = "hlsearch",
      i = "ignorecase",
      l = "list",
      n = "number",
      r = "relativenumber",
      s = "spell",
      u = "cursorcolumn",
      v = "virtualedit",
      w = "wrap",
      x = "crosshairs",
    },
  },
  ["["] = {
    d = "Go to prev diagnostic",

    a = "Prev arg",
    A = "First arg",
    b = "Prev buffer",
    B = "First buffer",
    l = "Prev location list item",
    L = "First location list item",
    ["<C-L>"] = "Last error of prev file in loclist",
    q = "Prev quickfix list item",
    Q = "First quickfix list item",
    ["<C-Q>"] = "Last error of prev file in quickfix",
    t = "Prev tag",
    T = "First tag",
    ["<C-T>"] = "Prev tag in previous window",
    f = "Previous file (alphabetically)",
    n = "Previous SCM conflict marker",
    ["<Space>"] = "Add line above",
    e = "Exchange with above",
    o = {
      name = "+options",
      b = "set background light",
      c = "set cursorline on",
      d = "set diff on",
      h = "set hlsearch on",
      i = "set ignorecase on",
      l = "set list on",
      n = "set number on",
      r = "set relativenumber on",
      s = "set spell on",
      u = "set cursorcolumn on",
      v = "set virtualedit on",
      w = "set wrap on",
      x = "set crosshairs on",
    },
  },
  ["]"] = {
    d = "Go to next diagnostic",

    a = "Next arg",
    A = "First arg",
    b = "Next buffer",
    B = "Last buffer",
    l = "Next location list item",
    L = "Last location list item",
    ["<C-L>"] = "First error of next file in loclist",
    q = "Next quickfix list item",
    Q = "Last quickfix list item",
    ["<C-Q>"] = "First error of next file in quickfix",
    t = "Next tag",
    T = "Last tag",
    ["<C-T>"] = "Next tag in previous window",
    f = "Next file (alphabetically)",
    n = "Next SCM conflict marker",
    ["<Space>"] = "Add line below",
    e = "Exchange with below",
    o = {
      name = "+options",
      b = "set background dark",
      c = "set cursorline off",
      d = "set diff off",
      h = "set hlsearch off",
      i = "set ignorecase off",
      l = "set list off",
      n = "set number off",
      r = "set relativenumber off",
      s = "set spell off",
      u = "set cursorcolumn off",
      v = "set virtualedit off",
      w = "set wrap off",
      x = "set crosshairs off",
    },
  },
  ["<C-B>"] = "Back up a page",
  ["<C-F>"] = "Forward down a page",
  ["<C-D>"] = "Down half a page",
  ["<C-U>"] = "Up half a page",
  ["<C-k>"] = { [[:<C-U>exec "exec 'norm m`' | move -" . (1+v:count1)<cr>]], "Move line up" },
  ["<C-j>"] = { [[:<C-U>exec "exec 'norm m`' | move +" . (0+v:count1)<cr>]], "Move line down" },
  ["<C-n>"] = "Visual Multi",
  ["<C-L>"] = {
    name = "+Local commands",
    ["<C-R>"] = { [[:call ExecuteFile()<cr>]], "Run current file" },
  },
  ["f"] = { [[<Plug>Sneak_f]], "Sneak f" },
  ["F"] = { [[<Plug>Sneak_F]], "Sneak F" },
  ["t"] = { [[<Plug>Sneak_t]], "Sneak t" },
  ["T"] = { [[<Plug>Sneak_T]], "Sneak T" },
  ["j"] = { [[gj]], "Down virtual line" },
  ["k"] = { [[gk]], "Up virtual line" },
  ["t"] = {
    name = "Test",
    ["<C-n>"] = { [[<cmd>TestNearest<cr>]], "Test nearest" },
    ["<C-f>"] = { [[<cmd>TestFile<cr>]], "Test file" },
    ["<C-s>"] = { [[<cmd>TestSuite<cr>]], "Test suite" },
    ["<C-l>"] = { [[<cmd>TestLast<cr>]], "Test last" },
    ["<C-g>"] = { [[<cmd>TestVisit<cr>]], "Test visit" },
  },
}

local comamnd = {
  ["$h"] = { "e ~/", "Edit home" },
  ["$d"] = { "e ~/Desktop", "Edit Desktop" },
  ["$j"] = { "e ./", "Edit here" },
}

local command_opts = {
  mode = "c",
}

local visual = {
  ["<C-k>"] = { [[:<C-U>exec "'<,'>move '<-" . (1+v:count1)<cr>gv]], "Move line up" },
  ["<C-j>"] = { [[:<C-U>exec "'<,'>move '>+" . (0+v:count1)<cr>gv]], "Move line down" },
  ["<S-h>"] = { [[<cmd>DVB_Drag('left')]], "Drag left" },
  ["<S-l>"] = { [[<cmd>DVB_Drag('right')]], "Drag right" },
  ["<S-j>"] = { [[<cmd>DVB_Drag('down')]], "Drag down" },
  ["<S-k>"] = { [[<cmd>DVB_Drag('up')]], "Drag up" },
}

local visual_opts = {
  mode = "v",
}

local insert = {
  ["<C-e>"] = {
    name = "LuaSnip Jumps",
    ["<C-n>"] = { [[<Plug>luasnip-expand-or-jump]], "Next choice" },
    ["<C-p>"] = { [[<Plug>luasnip-jump-prev]], "Prev choice" },
  },
}

local insert_opts = {
  mode = "i",
}

local select = {
  ["<C-e>"] = {
    name = "LuaSnip Jumps",
    ["<C-n>"] = { [[<Plug>luasnip-expand-or-jump]], "Next choice" },
    ["<C-p>"] = { [[<Plug>luasnip-jump-prev]], "Prev choice" },
  },
}

local select_opts = {
  mode = "s",
}

local wk = require("which-key")

wk.register(normal)
wk.register(visual, visual_opts)
wk.register(insert, insert_opts)
wk.register(select, select_opts)
-- wk.register(command, command_opts)
