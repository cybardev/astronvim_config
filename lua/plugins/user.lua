-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- USER CONFIGURATION --
-- ~/.config/nvim/lua/plugins/user.lua

local BG_DARK = "#202020"
local BG_DARKER = "#111111"

local DISABLED_PLUGINS = {
  "rcarriga/cmp-dap",
  "goolord/alpha-nvim",
  "rcarriga/nvim-dap-ui",
  "stevearc/aerial.nvim",
  "kevinhwang91/nvim-ufo",
  "mfussenegger/nvim-dap",
  "akinsho/toggleterm.nvim",
  "stevearc/resession.nvim",
  "s1n7ax/nvim-window-picker",
  "echasnovski/mini.bufremove",
  -- "nvim-neo-tree/neo-tree.nvim",
  "max397574/better-escape.nvim",
  "mrjones2014/smart-splits.nvim",
}

local function disable_plugins(to_disable)
  local plugins = {}
  for _, plugin in pairs(to_disable) do
    table.insert(plugins, { plugin, enabled = false })
  end
  return plugins
end

---@type LazySpec
return vim.list_extend(disable_plugins(DISABLED_PLUGINS), {
  -- <| configure plugins |> --
  {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.lua" },
    -- import community plugins
    { import = "astrocommunity.colorscheme.rose-pine" },
    { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = {
          colorcolumn = { "80", "120" },
        },
      },
      mappings = {
        n = {
          [":"] = { ";" },
          [";"] = { ":" },
        },
      },
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      colorscheme = "onedark",
      highlights = {
        init = { -- this table overrides highlights in all themes
          -- Normal = { bg = "#000000" },
        },
        onedark = {
          CursorLine = { bg = BG_DARK },
          LineNr = { bg = BG_DARK },
        },
        onedark_dark = {
          CursorLine = { bg = BG_DARKER },
          LineNr = { bg = BG_DARKER },
        },
      },
    },
  },
})
