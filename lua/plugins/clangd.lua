return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyright = {},
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
