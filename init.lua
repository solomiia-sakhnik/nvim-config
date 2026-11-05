vim.pack.add {
  { src = 'https://github.com/sainnhe/gruvbox-material', },
}

vim.o.background = 'light'
vim.cmd('colorscheme gruvbox-material')

vim.g.mapleader = ' '
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.keymap.set("n", "<leader>y", "<cmd>%y+<cr>", {
    desc = "Copy entire file to clipboard"
})
vim.keymap.set("n", "<leader>m", "<cmd>update<cr><cmd>make<cr>", {
    desc = "Save and make"
})

vim.pack.add {
  { src = 'https://github.com/windwp/nvim-autopairs', },
  { src = 'https://github.com/sakhnik/quickterm.nvim', },
}

require 'nvim-autopairs'.setup {}

require'my.lsp'
require'my.leetcode'
require'my.dap'

print("hello Solia!")
