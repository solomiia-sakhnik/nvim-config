vim.pack.add {
    { src = 'https://github.com/mfussenegger/nvim-dap', },
    { src = 'https://github.com/mfussenegger/nvim-dap-python', },
    { src = "https://github.com/igorlfs/nvim-dap-view", version = vim.version.range("1.*")  },
}

require("dap-python").setup("python3")

