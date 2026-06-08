-- Line Numbers
vim.opt.number = true
local numbertoggle = vim.api.nvim_create_augroup("numbertoggle", {})
vim.api.nvim_create_autocmd(
    { "BufEnter", "FocusGained", "InsertLeave", "WinEnter", "CmdlineLeave" },
    {
        group = numbertoggle,
        callback = function()
            if vim.opt.number and vim.api.nvim_get_mode() ~= "i" then
                vim.opt.relativenumber = true
            end
        end,
    }
)

vim.api.nvim_create_autocmd(
    { "BufLeave", "FocusLost", "InsertEnter", "WinLeave", "CmdlineEnter" },
    {
        group = numbertoggle,
        callback = function()
            if vim.opt.number then
                vim.opt.relativenumber = false
                vim.cmd("redraw")
            end
        end,
    }
)

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.matchtime = 2

-- Files
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.autoread = true
vim.opt.swapfile = false

-- Clipboard & Mouse
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"

-- Appearance
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"

vim.opt.fillchars = {
    eob = " ",
}

-- Windows & Splits
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"

-- Scrolling
vim.opt.scrolloff = 8

-- Wrapping
vim.opt.wrap = true
vim.opt.linebreak = true

-- Command Line
vim.opt.history = 500
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"

-- Whitespace
vim.opt.list = true

vim.opt.listchars = {
    tab = "» ",
    trail = "·",
    nbsp = "␣",
}

-- Other
vim.opt.completeopt = {
    "menu",
    "menuone",
    "noselect",
}

vim.opt.updatetime = 250

-- cursorline 
vim.opt.cursorline = false
