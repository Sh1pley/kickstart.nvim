return {
  {
    'tpope/vim-fugitive',
  },
  {
    vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', {}),
    vim.keymap.set('n', '<leader>gb', ':Gitsigns toggle_current_line_blame<CR>', {}),
    vim.keymap.set('n', '<leader>gP', ':Git -c push.default=current push<CR>', {}),
  },
}
