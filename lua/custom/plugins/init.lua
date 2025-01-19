-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      no_italic = true,
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = '#000000',
          mantle = '#000000',
          crust = '#000000',
        },
      },
      integrations = {
        telescope = {
          enabled = true,
          style = 'nvchad',
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
  },

  --{
  -- 'github/copilot.vim',
  -- },

  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        tailwindcss = {},
      },
    },
  },
  --[[ ]]
  {
    'Exafunction/codeium.nvim',
    cmd = 'Codeium',
    event = 'InsertEnter',
    build = ':Codeium Auth',
    opts = {
      enable_cmp_source = vim.g.ai_cmp,
      virtual_text = {
        enabled = not vim.g.ai_cmp,
        key_bindings = {
          accept = '<Tab>',
          next = '<M-]>',
          prev = '<M-[>',
        },
      },
    },
  },

  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = { 'lua', 'rust', 'python', 'markdown', 'markdown_inline' },
    },
  },
}
