-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
if vim.g.vscode then
  require("nvim_vscode.config.options")
  require("nvim_vscode.config.keymaps")
  require("nvim_vscode.config.lazy")
  return
end
-- 其他普通 Neovim 配置
require("config.lazy")
require("config.options")
require("config.keymaps")
