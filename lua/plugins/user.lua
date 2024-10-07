-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- USER CONFIGURATION --
-- ~/.config/nvim/lua/plugins/user.lua

local BG_DARK = "#202020"
local BG_DARKER = "#111111"

---@type LazySpec
return {
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
      colorscheme = "onedark_dark",
      highlights = {
        init = { -- this table overrides highlights in all themes
          -- Normal = { bg = "#000000" },
        },
        onedark = {
          CursorLine = { bg = BG_DARK },
          CursorLineNr = { bg = "#2D2D2D", fg = "#EEEEEE" },
          LineNr = { bg = BG_DARK },
          ColorColumn = { bg = BG_DARK },
        },
        onedark_dark = {
          CursorLine = { bg = BG_DARKER },
          LineNr = { bg = BG_DARKER },
        },
      },
    },
  },
}
