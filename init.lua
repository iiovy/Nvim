local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)
vim.opt.shortmess:append("I") 

require("core.options")
require("core.keybindings")
require("core.theme").load()

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
})  

local default_theme = require("core.theme")
local other_theme = require("core.other_theme")

local state = "default"
local function toggle_theme()
  if state == "default" then
    other_theme.load()
    state = "other"
  else
    default_theme.load()
    state = "default"
  end
end

vim.keymap.set("n", "<leader>tt", toggle_theme, { desc = "Toggle theme" })
