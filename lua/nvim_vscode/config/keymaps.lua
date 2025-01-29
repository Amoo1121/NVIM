local keymap = vim.keymap

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- hop
keymap.set("n", "<leader>hc", ":HopChar1<CR>") --用一个字符匹配
keymap.set("n", "<leader>hdc", ":HopChar2<CR>")
keymap.set("n", "<leader>ha", ":HopAnywhere<CR>")
keymap.set("n", "<leader>hl", ":HopLine<CR>")
keymap.set("n", "<leader>hw", ":HopWord<CR>")

-- formatting
keymap.set(
	"n",
	"<leader>lf",
	"<Cmd>lua require('vscode').call('editor.action.formatDocument')<CR>",
	{ desc = "Format" }
)
keymap.set(
	"v",
	"<leader>lf",
	"<Cmd>lua require('vscode').call('editor.action.formatSelection')<CR>",
	{ desc = "Format" }
)

