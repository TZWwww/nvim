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

-- vim.g.clipboard = {
--   name = "xclip",
--   copy = {
--     ["+"] = "xclip -selection clipboard -in",
--     ["*"] = "xclip -selection primary -in",
--   },
--   paste = {
--     ["+"] = "xclip -selection clipboard -out",
--     ["*"] = "xclip -selection primary -out",
--   },
--   cache_enabled = 0,
-- }
