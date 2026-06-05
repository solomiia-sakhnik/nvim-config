vim.pack.add {
  { src = 'https://github.com/sainnhe/gruvbox-material', },
}

vim.o.background = 'light'
vim.cmd('colorscheme gruvbox-material')

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

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

vim.diagnostic.config({ severity_sort = true, virtual_lines = { current_line = true } })

vim.pack.add {
  { src = 'https://github.com/neovim/nvim-lspconfig', },
  { src = 'https://github.com/folke/lazydev.nvim', },
}

require'lazydev'.setup {}

vim.lsp.enable('clangd')
vim.lsp.enable('pylsp')
vim.lsp.enable('lua_ls')

vim.o.autocomplete = true
vim.o.complete = 'o,.,w,b,u'
vim.o.completeopt = "fuzzy,menuone,noselect,popup"
vim.o.pumheight = 7
vim.o.pummaxwidth = 80
vim.o.wildmode = 'noselect,longest,full'

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client then
       vim.wo[0].signcolumn = 'yes'
    end
  end
})

-- Insert-mode <Tab>: completion next
vim.keymap.set("i", "<Tab>", function()
  if vim.fn.pumvisible() == 1 then
    return '<c-n>'
  else
    return '<tab>'
  end
end, { expr = true })

-- Insert-mode <Tab>: completion prev
vim.keymap.set("i", "<s-Tab>", function()
  if vim.fn.pumvisible() == 1 then
    return '<c-p>'
  else
    return '<s-tab>'
  end
end, { expr = true })

vim.pack.add {
  { src = 'https://github.com/windwp/nvim-autopairs', },
}

require 'nvim-autopairs'.setup {}
print("hello Solia!")
