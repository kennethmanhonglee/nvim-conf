require('nvim-tree').setup {
  reload_on_bufenter = true,
  diagnostics = {
    enable = true,
  },
  view = {
    width = 40,
  },
  filters = {
    custom = {'.git', '.gitignore'}
  },
  git = {
    enable = true,
    ignore = true,
  },
  filters = {
    dotfiles = false,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      window_picker = {
        enable = false,
      },
    },
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
  },
  open_on_setup = true,
}
