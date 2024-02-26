return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyright = {
          enabled = false,
        },
        pylsp = {
          settings = {

            pylsp = {
              plugins = {

                pylint = {
                  enabled = false,
                },
                pycodestyle = {
                  enabled = false,
                },
              },
            },
          },
        },
        -- pylint = {},
        -- clangd = {},
      },
    },
  },
}
