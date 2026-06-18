vim.pack.add {
  { src = 'https://github.com/kawre/leetcode.nvim', },
  { src = 'https://github.com/MunifTanjim/nui.nvim', },
  { src = 'https://github.com/nvim-lua/plenary.nvim', },
  { src = 'https://github.com/nvim-mini/mini.pick', },
  { src = 'https://github.com/nvim-mini/mini.icons', },
}

require'mini.pick'.setup {}

require'leetcode'.setup {
  lang = vim.env.LEET_LANG and vim.env.LEET_LANG or 'cpp',
  storage = { home = vim.env.HOME .. '/.leetcode' },
}
