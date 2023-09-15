vim.g['prettier#quickfix_enabled'] = '1'
vim.g['prettier#config#single_quote'] = 'false'
vim.g['prettier#config#trailing_comma'] = 'es5'
vim.g['prettier#config#semi'] = 'true'
local map = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, { noremap = true, silent = true })
end

map('n', '<leader>p', ':PrettierAsync<CR>')
