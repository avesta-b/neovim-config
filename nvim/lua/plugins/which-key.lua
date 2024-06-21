return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = { spelling = true },
      defaults = {
        mode = { "n", "v" },
        ["<leader>r"] = { name = "Reload config file" },
        ["<leader>s"] = { name = "Save file" },
        ["<leader>q"] = { name = "Save and quit entire project" },

        ["<leader>n"] = { name = "+nvimtree" },

        ["<leader>w"] = { name = "+window" },
        ["<leader>wh"] = { name = "left" },
        ["<leader>wj"] = { name = "down" },
        ["<leader>wk"] = { name = "up" },
        ["<leader>wl"] = { name = "right" },


        ["<leader>ws"] = { name = "+split" },

        ["<leader>b"] = { name = "+buffers" },

        ["<leader>t"] = { name = "+terminal" },
        ["<leader>tt"] = { name = "Toggle terminal" },

        ["<leader>f"] = { name = "+fzf" },
        ["<leader>ff"] = { name = "files" },
        ["<leader>fg"] = { name = "grep" },
        ["<leader>fb"] = { name = "buffers" },
        ["<leader>fh"] = { name = "help" },
        ["<leader>fc"] = { name = "commands" },
        ["<leader>ft"] = { name = "txt in current buffer" },
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults)
    end,
  }
}
