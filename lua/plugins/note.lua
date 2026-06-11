-- lua/plugins/global-note.lua

return {

  "backdround/global-note.nvim",

  config = function()
    local global_note = require("global-note")

    global_note.setup({
      filename = "notes",
      directory = vim.fn.stdpath("config") .. "/assets",
      window_config = function()

          local width = 30
          local height = 15
          local ui = vim.api.nvim_list_uis()[1]

          vim.wo.number = false
          vim.wo.relativenumber = false


          return {
              width = width,
              height = height,
              row = math.floor((ui.height - height ) / 2),
              col = math.floor((ui.width - width) / 1.3 ),
              style = "minimal",
              border = "rounded",
              relative = "editor",
          }
      end,
      
      additional_presets = {
        projects = {
          filename = "projects-to-do.md",
          title = "List of projects",
          command_name = "ProjectsNote",
        },
      }
    })

    vim.keymap.set("n", "<leader>n", function()
      global_note.toggle_note()
    end, { desc = "Note" })

    vim.keymap.set("n", "<leader>pn", function()
      global_note.toggle_note("projects")
    end, { desc = "Projects Note" })
  end,
}
