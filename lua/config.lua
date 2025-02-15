local config = {}

config.Opts = {
  autoindent     = true,
  background     = "dark",
  backspace      = "eol,start,indent",
  backup         = false,
  colorcolumn    = "120",
  cmdheight      = 1,
  cursorline     = true,
  expandtab      = true,
  fileencoding   = "utf-8",
  foldcolumn     = "2",
  foldenable     = true,
  foldexpr       = "nvim_treesitter#foldexpr()",
  foldlevelstart = 10,
  foldmethod     = "expr",
  grepprg        = "rg --vimgrep --smart-case --no-heading",
  guifont        = "Fira_Code_Regular_Nerd_Font_Complete:h14", -- This setting works for VimR
  hlsearch       = true,
  ignorecase     = true,
  incsearch      = true,
  indent_size    = 2,
  laststatus     = 3,
  lazyredraw     = true,
  list           = true,
  listchars      = "tab:\u{BB}\u{BB},trail:\u{B7},nbsp:~",
  magic          = true,
  matchtime      = 2,
  modeline       = true,
  mouse          = "a",
  number         = true,
  numberwidth    = 5,
  relativenumber = true,
  ruler          = true,
  scrolloff      = 7,
  shell          = '/bin/zsh',
  shiftround     = true,
  showcmd        = true,
  showmatch      = true,
  showmode       = false,
  smartcase      = true,
  smartindent    = false,
  smarttab       = true,
  spell          = true,
  spelllang      = "en_us",
  splitbelow     = true,
  splitright     = true,
  swapfile       = false,
  syntax         = "on",
  tags           = "./tags;",
  termguicolors  = true,
  textwidth      = 80,
  timeoutlen     = 500,
  undofile       = true,
  updatetime     = 300,
  wildignore     = "*.o,*~,*.pyc,*/.git/*,*.hg/*,*/.svn/*,*/.DS_Store,*/__pycache__/*,*/target/*",
  wildmenu       = true,
  wildmode       = "longest,list:full",
  wrap           = true,
  writebackup    = false,
}

config.Theming = {
  colorscheme = "catppuccin",
}

config.LSP = {
  enabled        = true,
  highlight_word = true,
  virtual_text   = true,
  servers = {
    primary = {
      "angularls",
      "bashls",
      "clangd",
      "cssls",
      "dockerls",
      "erlangls",
      "graphql",
      "html",
      "jedi_language_server",
      "prismals",
      "rls",
      "solargraph",
      "sourcekit",
      "stylelint_lsp",
      "texlab",
      "tsserver",
      "vimls",
      "volar",
    },
    regular = {
      "ccls",
      "pylsp",
      "terraformls",
      "terraform_lsp",
    },
    custom = {
      "deno",
      "elixir",
      "go",
      "jsonls",
      "rust_analyzer",
      "sql",
      "vue",
      "yaml",
    },
  },
}

config.Completion = {
  enabled = true,
  autopairs = true,
  items = 10,
  completeopt = "menuone,noselect",
}

config.Treesitter = {
  enabled = true,
  disabled = { 'latex', 'tex' },
  rainbow = true,
  parsers = {
    "bash",
    "c",
    "cpp",
    "css",
    "dockerfile",
    "elixir",
    "go",
    "graphql",
    "html",
    "http",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "latex",
    "lua",
    "org",
    "python",
    "query",
    "regex",
    "ruby",
    "rust",
    "toml",
    "typescript",
    "tsx",
    "vim",
    "vue",
    "yaml",
  }
}

-- Plugins that need extra configuration
-- These names need to align with one of the files/directories in the
-- lua/extensions directory
config.Extensions = {
  'autolist',
  'autopairs',
  'catppucchin',
  'cmp',
  'comment_nvim',
  'dap',
  'dbui',
  'diffview',
  'drag_visuals',
  'emmet_vim',
  'femaco',
  'fidget',
  'filetype',
  'gitsigns',
  'go',
  'indent_blankline',
  'lazygit',
  'lightspeed',
  'lsp_colors',
  'lsputils',
  'lualine',
  'luasnip',
  'neotest',
  'null_ls',
  'nvim_gps',
  'nvim_tree',
  'octo',
  'onedark',
  'orgmode',
  'refactoring',
  'rust_tools',
  'spellsitter',
  'surround',
  'swift',
  'telescope',
  'terminal',
  'todo_comments',
  'treesitter',
  'trouble',
  'vim_markdown',
  'vimtex',
  'which_key',
  'workspaces',
  'yabs',
}

return config
