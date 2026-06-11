return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "3rd/image.nvim",
    },

    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- buttons
      dashboard.section.header.val = {}
      dashboard.section.footer.val = {}

      dashboard.section.buttons.val = {
        dashboard.button("e", "  New File", "<cmd>enew<CR>"),
        dashboard.button("f", "  Find Files", ":lua require('snacks').picker.files()<CR>"),
        dashboard.button("r", "  Recent Files", ":lua require('snacks').picker.recent()<CR>"),
      }

      alpha.setup(dashboard.config)

      local img = nil
      local IMAGE_W, IMAGE_H = 80, 40
      local GAP = 1

      local function clear_image()
        if img then
          pcall(function() img:clear() end)
          img = nil
        end
      end

      local function render()
        local ok, image = pcall(require, "image")
        if not ok then return end

        clear_image()

        local lines = vim.o.lines
        local cols = vim.o.columns

        local image_x = math.floor((cols - IMAGE_W) / 2)
        local image_y = math.floor(lines * 0.08)

        img = image.from_file(vim.fn.stdpath("config") .. "/assets/Cold.png", {
          width = IMAGE_W,
          height = IMAGE_H,
          x = image_x,
          y = image_y,
        })

        img:render()

        local buttons_height = #dashboard.section.buttons.val * 2
        local start_y = image_y + 10

        local remaining_space = lines - start_y - buttons_height
        local bottom_padding = math.max(math.floor(remaining_space * 0.69), 1)

        dashboard.config.layout = {
          { type = "padding", val = start_y + bottom_padding },
          dashboard.section.buttons,
        }

        alpha.redraw()
      end

      vim.api.nvim_create_autocmd("User", {
        pattern = "AlphaReady",
        callback = function()
          vim.defer_fn(render, 80)
        end,
      })

      vim.api.nvim_create_autocmd("VimResized", {
        callback = function()
          if vim.bo.filetype == "alpha" then
            vim.defer_fn(render, 80)
          end
        end,
      })

      vim.api.nvim_create_autocmd({
          "BufEnter",
          "BufWinEnter",
          "WinEnter",
      }, {
          callback = function()
            if vim.bo.filetype ~= "alpha" then
            clear_image()
          end
      end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = clear_image,
})
    end,
  },
}
