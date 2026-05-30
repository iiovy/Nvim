return {
  "akinsho/toggleterm.nvim",

  version = "*",

  config = function()

    require("toggleterm").setup({

      size = 20,

      open_mapping = [[<c-\>]],

      direction = "float",

      float_opts = {
        border = "rounded",

        winblend = 20,
      },

    })

  end,
}
