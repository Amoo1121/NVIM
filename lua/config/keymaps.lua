local keymap = vim.keymap

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>sh", "<C-w>v") -- 水平新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")

-- ---------- 插件 --------------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require("telescope.builtin")

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- 环境里要安装ripgrep
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- hop
keymap.set("n", "<leader>hc", ":HopChar1<CR>") --用一个字符匹配
keymap.set("n", "<leader>hdc", ":HopChar2<CR>")
keymap.set("n", "<leader>ha", ":HopAnywhere<CR>")
keymap.set("n", "<leader>hl", ":HopLine<CR>")
keymap.set("n", "<leader>hw", ":HopWord<CR>")
