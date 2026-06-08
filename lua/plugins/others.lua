return {
  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- context-aware commenting
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true,
    config = function()
      require("ts_context_commentstring").setup({
        enable_autocmd = false,
      })
    end,
  },

  -- trouble.nvim
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
    },
    opts = {},
  },

  -- persistence.nvim
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
  },

  -- project.nvim
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({})
    end,
  },

  -- undo-glow.nvim
  {
    "y3owk1n/undo-glow.nvim",
    version = "*",
    event = "VeryLazy",

    opts = {
      animation = {
        enabled = true,
        duration = 300,
        animation_type = "zoom",
        window_scoped = true,
      },

      highlights = {
        undo = {
          hl_color = { bg = "#693232" },
        },
        redo = {
          hl_color = { bg = "#2F4640" },
        },
        yank = {
          hl_color = { bg = "#7A683A" },
        },
        paste = {
          hl_color = { bg = "#325B5B" },
        },
        search = {
          hl_color = { bg = "#5C475C" },
        },
        comment = {
          hl_color = { bg = "#7A5A3D" },
        },
        cursor = {
          hl_color = { bg = "#793D54" },
        },
      },

      priority = 2048 * 3,
    },

    keys = {
      {
        "u",
        function()
          require("undo-glow").undo()
        end,
        mode = "n",
        desc = "Undo with highlight",
      },
      {
        "U",
        function()
          require("undo-glow").redo()
        end,
        mode = "n",
        desc = "Redo with highlight",
      },
      {
        "p",
        function()
          require("undo-glow").paste_below()
        end,
        mode = "n",
        desc = "Paste below with highlight",
      },
      {
        "P",
        function()
          require("undo-glow").paste_above()
        end,
        mode = "n",
        desc = "Paste above with highlight",
      },
    },

    init = function()
      vim.api.nvim_create_autocmd("TextYankPost", {
        callback = function()
          require("undo-glow").yank()
        end,
      })
    end,
  },
}
