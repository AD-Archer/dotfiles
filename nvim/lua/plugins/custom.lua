
local plugins = {

  -- this opts will extend the default opts 
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"html", "css", "bash","go"},
    },
  },
  {
    "folke/which-key.nvim",
  },

  -- If your opts uses a function call ex: require*, then make opts spec a function
  -- should return the modified default config as well
  -- here we just call the default telescope config 
  -- And edit its mappinsg
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "nvchad.configs.telescope"

      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<Esc>"] = require("telescope.actions").close,
      }

     -- or 
     -- table.insert(conf.defaults.mappings.i, your table)

      return conf
    end,
  },

 {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "gopls",
        "gofumpt",
        "goimports",
        "stylua"
      },
    },
  },
{
  "leoluz/nvim-dap-go",
  config = true,
},

-- In order to modify the `lspconfig` configuration:
{
  "neovim/nvim-lspconfig",
   config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
   end,
},
  {

    "github/copilot.vim",
    lazy=false
  },
  {
    "mfussenegger/nvim-dap",
    lazy = false,
  },
  {
    "dreamsofcode-io/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    lazy =false,
    config = function(_, opts)
      require("dap-go").setup(opts)
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    lazy = false,
    config = function(_, opts)
      require("dapui").setup(opts)
    end,
  },
  {
    "easymotion/vim-easymotion",
    lazy=false
  },
  {
    "nvim-tree/nvim-tree.lua",
    -- disable diagnostics
    config = function(_, _)
      require("nvim-tree").setup({
        diagnostics = {
          enable = false,
        },
      })
    end,
    lazy=false
  }

}

return plugins
