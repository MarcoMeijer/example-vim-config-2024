local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.git_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

