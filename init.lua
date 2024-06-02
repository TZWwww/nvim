require('options')
require('plugins')
require('keybinding')
require('lsp')

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      configurationSources = {"pycodestyle"},
      plugins = {
        pycodestyle = {
          configPath = "~/.config/nvim/pylsp/config.toml",
          ignore = {"E501", "E126", "E123", "E302", "E305", "E303", "E741", "W293", "E226"},
        }
      }
    }
  }
}

