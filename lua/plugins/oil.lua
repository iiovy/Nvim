return {
  "stevearc/oil.nvim",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()

    require("oil").setup({

      default_file_explorer = true,

      columns = {
        "icon",
      },

      view_options = {
        show_hidden = true,
      },

      float = {

        padding = 2,

        max_width = 0.5,
        max_height = 0.5,

        border = "rounded",

        preview_split = "right",
        preview_split_size = 80,

        win_options = {
          winblend = 40,
        },
      },
    })

    -- transparent floating windows
    vim.api.nvim_set_hl(0, "NormalFloat", {
      bg = "none",
    })

    -- transparent borders
    vim.api.nvim_set_hl(0, "FloatBorder", {
      fg = "#ffffff",
      bg = "none",
    })

    vim.api.nvim_set_hl(0, "OilBorder", {
      fg = "#ffffff",
      bg = "none",
    })

    -- white icons/files
    vim.api.nvim_set_hl(0, "Directory", {
      fg = "#ffffff",
    })

    vim.api.nvim_set_hl(0, "OilDir", {
      fg = "#ffffff",
    })

    vim.api.nvim_set_hl(0, "OilFile", {
      fg = "#ffffff",
    })

    -- open floating oil
    vim.keymap.set("n", "<leader>e", function()
      require("oil").open_float()
    end)

  end,
}
