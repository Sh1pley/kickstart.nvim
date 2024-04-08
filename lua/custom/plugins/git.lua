return {
  { 'tpope/vim-fugitive' },
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed, not both.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
    },
    config = true,
  },
  {
    -- Telescope keymaps
    vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { desc = '[g]it : [b]ranches' }),
    -- Fugitive keymaps
    vim.keymap.set('n', '<leader>gB', ':G blame<CR>', { desc = '[g]it : [B]lame', silent = true, noremap = true }),
    -- LazyGit keymaps
    -- Gitsigns keymaps
    vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = '[g]it : [P]review hunk' }),
    vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', { desc = '[g]it : [t]oggle blame' }),
    -- Neogit keymaps
    vim.keymap.set('n', '<leader>gs', ':Neogit<CR>', { desc = '[g]it : [s]tatus' }),
    vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { desc = '[g]it : [p]ull' }),
    vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { desc = '[g]it : [P]ush' }),
    vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { desc = '[g]it : [c]ommit' }),
  },
}
