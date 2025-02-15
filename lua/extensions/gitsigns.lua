require('gitsigns').setup {
  signs = {
    add          = { hl = 'GitGutterAdd',    text = '+' },
    change       = { hl = 'GitGutterChange', text = '~' },
    delete       = { hl = 'GitGutterDelete', text = '_' },
    topdelete    = { hl = 'GitGutterDelete', text = '¯' },
    changedelete = { hl = 'GitGutterChange', text = '~' },
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end)

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end)

    -- Actions
    map({'n', 'v'}, '<leader>hs', '<cmd>Gitsigns stage_hunk<cr>')
    map({'n', 'v'}, '<leader>hs', '<cmd>Gitsigns reset_hunk<cr>')
    map('n', '<leader>hS', gs.stage_buffer)
    map('n', '<leader>hu', gs.undo_stage_hunk)
    map('n', '<leader>hR', gs.reset_buffer)
    map('n', '<leader>hp', gs.preview_hunk)
    map('n', '<leader>hb', function() gs.blame_line{full=true} end)
    map('n', '<leader>tb', gs.toggle_current_line_blame)
    map('n', '<leader>hd', gs.diffthis)
    map('n', '<leader>hD', function() gs.diffthis('~') end)
    map('n', '<leader>td', gs.toggle_deleted)

    -- Text object
    map({'o', 'x'}, 'ih', '<cmd>Gitsigns select_hunk<cr>')
  end,
}
