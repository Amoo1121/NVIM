return {
  -- nvim-tree 配置
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false, -- 确保立即加载
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- 图标支持
    },
    config = function()
      require("nvim-tree").setup({
        renderer = {
          icons = {
            show = {
              folder = true,
            },
          },
          indent_markers = {
            enable = false,
          },
        },
        filters = {
          dotfiles = true,
        },
        view = {
          side = "left",
          width = 30,
        },
      })
    end,
  },

  -- bufferline 配置
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false, -- 确保立即加载
    config = function()
      vim.opt.termguicolors = true -- 启用终端 GUI 颜色支持
      require("bufferline").setup {
        options = {
          diagnostics = "nvim_lsp", -- 显示 LSP 的诊断信息
          offsets = {
            {
              filetype = "NvimTree", -- 必须与 nvim-tree 的 filetype 匹配
              text = "File Explorer", -- 显示在 bufferline 上的标题
              highlight = "Directory",
              text_align = "left", -- 左对齐
            },
          },
        },
      }
    end,
  },
}