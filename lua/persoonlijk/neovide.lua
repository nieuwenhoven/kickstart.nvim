-- neovide specifieke instellingen
-- > het console-font wordt gebruikt voor de termial editor,
--   voor neovide kiezen we hier expliciet een lettertype
if vim.g.neovide then
  vim.opt.guifont = 'CaskaydiaCove_Nerd_Font_Mono:h13'

  -- clipboard ondersteuning, copy paste in neovide
  vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<C-c>', '"+y') -- Copy
  vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
  vim.api.nvim_set_keymap('', '<C-v>', '+p<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('!', '<C-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('t', '<C-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', '<C-v>', '<C-R>+', { noremap = true, silent = true })
end
