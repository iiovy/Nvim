local M = {}

function M.load()
  vim.cmd("highlight clear")
  vim.g.colors_name = "grayscale"

  local set = vim.api.nvim_set_hl

  local NONE = "NONE"

 
  -- core text
  set(0, "Normal", { fg = "#ffffff", bg = NONE })
  set(0, "NormalNC", { fg = "#d0d0d0", bg = NONE })

  set(0, "Comment", { fg = "#8e9091", italic = true })
  set(0, "String", { fg = "#c0c0c0" })
  set(0, "Identifier", { fg = "#d9d9d9" })
  set(0, "Function", { fg = "#e0e0e0" })
  set(0, "Keyword", { fg = "#bfbfbf", bold = true })
  set(0, "Statement", { fg = "#bfbfbf", bold = true })
  set(0, "Type", { fg = "#d0d0d0" })
  set(0, "Constant", { fg = "#cfcfcf" })
  set(0, "Operator", { fg = "#ffffff" })

  -- numbers ui text
  set(0, "LineNr", { fg = "#555555", bg = NONE })
  set(0, "CursorLineNr", { fg = "#aaaaaa", bg = NONE })

  set(0, "Visual", { bg = "#2a2a2a" })
  set(0, "CursorLine", { bg = NONE })

  -- StatusLine
  set(0, "StatusLine", { fg = "#cccccc", bg = NONE })
  set(0, "StatusLineNC", { fg = "#666666", bg = NONE })

  set(0, "TabLine", { fg = "#888888", bg = NONE })
  set(0, "TabLineSel", { fg = "#ffffff", bg = NONE })
  set(0, "TabLineFill", { bg = NONE })

  set(0, "WinSeparator", { fg = "#333333", bg = NONE })
  set(0, "VertSplit", { fg = "#333333", bg = NONE })

  set(0, "SignColumn", { bg = NONE })
  set(0, "FoldColumn", { bg = NONE })

  -- floats
  set(0, "NormalFloat", { fg = "#d0d0d0", bg = NONE })
  set(0, "FloatBorder", { fg = "#444444", bg = NONE })
  set(0, "FloatTitle", { fg = "#aaaaaa", bg = NONE })

  -- punctuation
  set(0, "@punctuation", { fg = "#ffffff", bg = NONE })
  set(0, "@punctuation.delimiter", { fg = "#ffffff", bg = NONE })
  set(0, "@punctuation.bracket", { fg = "#ffffff", bg = NONE })
  set(0, "@punctuation.special", { fg = "#ffffff", bg = NONE })
  set(0, "@constructor", { fg = "#ffffff", bg = NONE })
  set(0, "@constructor.lua", { fg = "#ffffff", bg = NONE })
  set(0, "Special", { fg = "#ffffff", bg = NONE })
  -- fallback 
  set(0, "@operator", { fg = "#ffffff", bg = NONE })

  set(0, "@variable", { fg = "#d9d9d9", bg = NONE })
  set(0, "@variable.builtin", { fg = "#ffffff", bg = NONE })

  set(0, "@string", { fg = "#c0c0c0", bg = NONE })
  set(0, "@number", { fg = "#d0d0d0", bg = NONE })
  set(0, "EndOfBuffer", { fg = NONE, bg = NONE })

  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ffffff" })
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffffff" })
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#ffffff" })
  vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#ffffff" })

  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#ffffff" })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#ffffff" })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#ffffff" })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#ffffff" })
end

return M
