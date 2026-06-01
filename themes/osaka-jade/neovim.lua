return {
  {
    "ReallySnazzy/osaka-jade-nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme osaka-jade]])
      vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#F7E8B2", bold = true }) 
      vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#F7E8B2" })
      vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#E67D64" })
      vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = "#E67D64" })
    end
  },
}
