return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "ribelo/taskwarrior.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    -- or
    config = true,
  },
  {
    "tssm/nvim-snitch",
    Event = "AstroFile",
    lazy = false,
  },
  {
    "tssm/nvim-reflex",
    Event = "AstroFile",
    lazy = false,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },
  {
    "nvim-neorg/neorg",
    lazy = false,
    Event = "AstroFile",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},  -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.presenter"] = { config = { zen_mode = "truezen" } },
          ["core.ui"] = {},
          ["core.export"] = {},
          ["core.keybinds"] = {},
          ["core.neorgcmd"] = {},
          ["core.integrations.treesitter"] = {},
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/RoamNotes/",
                main = "~/RoamNotes/personal",
              },
            },
          },
        },
      }
    end,
    run = ":Neorg sync-parsers",
  },
}
