local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local telescope = require('telescope')
telescope.load_extension('harpoon')


require("harpoon").setup({
})

vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
vim.keymap.set('n', '<leader>a', mark.add_file)


