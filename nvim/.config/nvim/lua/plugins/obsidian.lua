return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  config = function()
    require('obsidian').setup({
        legacy_commands=false,
        workspaces = {
          {
            name = "dev",
            path = "~/Documents/Vaults/dev",
          },
          {
            name = "godspear",
            path = "~/Documents/Vaults/godspear",
          },
        },
    })
  end
}
