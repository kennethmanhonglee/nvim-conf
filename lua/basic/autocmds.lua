local group = vim.api.nvim_create_augroup("CustomGroups", {})

local autocmds = {
  -- Highlight on yank
  {'TextYankPost', { callback = function() require('vim.highlight').on_yank() end, group = group }},
  -- Remember cursor position
  {'BufReadPost', { command = [[if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'gitcommit' | exe "normal! g'\"" | endif]], group = group }},
  -- Remove trailing whitespace
  {'BufWritePre', { command = [[%s/\s\+$//e]], group = group }},
  {'BufWritePre', { command = [[%s/\n\+\%$//e]], group = group }},
  -- Terminal buffer defaults
  {'TermOpen', { command = [[setlocal filetype=terminal nonumber norelativenumber bufhidden="delete"]], group = group }},
  {'TermOpen', { command = 'startinsert', group = group }},
  -- Update file if file has been updated outside of buffer
  {{'FocusGained', 'BufEnter'}, { command = 'checktime', group = group }},
  {'StdinReadPre', { command = [[let s:std_in=1]], group = group }},
  {'ModeChanged',
    {
      callback = function()
        local luasnip = require('luasnip')
        if
          ((vim.v.event.old_mode == 's' and vim.v.event.new_mode == 'n') or vim.v.event.old_mode == 'i')
          and luasnip.session.current_nodes[vim.api.nvim_get_current_buf()]
          and not luasnip.session.jump_active
        then
          luasnip.unlink_current()
        end
      end,
      group = group,
    },
  },
  {'BufReadPost', { command = [[setlocal nospell]], pattern = 'quickfix', group = group }}
}

for _, cmd in ipairs(autocmds) do
  local event = cmd[1]
  local opts = cmd[2]

  vim.api.nvim_create_autocmd(event, opts)
end
