return {
  -- {
  --   "zootedb0t/citruszest.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- For using default config leave this empty.
  --     require("citruszest").setup({
  --         option = {
  --             transparent = true, -- Enable/Disable transparency
  --             bold = true,
  --             italic = true,
  --         },
  --         -- Override default highlight style in this table
  --         -- E.g If you want to override `Constant` highlight style
  --         style = {
  --         -- This will change Constant foreground color and make it bold.
  --         Constant = { fg = "#FFFFFF", bold = true}
  --         },
  --     })
  --     vim.cmd("colorscheme citruszest")
  --   end,
  -- },
  -- {
  --   "n1ghtmare/noirblaze-vim",
  --   config = function()
  --     vim.opt.background = "dark"
  --     vim.cmd("colorscheme noirblaze")
  --   end
  -- },
  {
    "wolandark/Mitra-Vim",
    config = function()
      vim.opt.background = "dark"
      vim.cmd.colorscheme('mitra')
    end
  },
}
