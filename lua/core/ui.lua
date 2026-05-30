-- transparency
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- statusline transparency
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

-- line numbers
vim.opt.number = true

-- relative numbers
vim.opt.relativenumber = true

-- keep sign column visible
vim.opt.signcolumn = "yes"

-- smoother split appearance
vim.opt.splitright = true
vim.opt.splitbelow = true

-- optional: highlight current column
-- vim.opt.cursorcolumn = true

vim.opt.fillchars = {
  eob = " ",
}
