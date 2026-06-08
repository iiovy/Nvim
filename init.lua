local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

require("core.options")
require("core.keybindings")
require("core.theme").setup()

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
}) 


