return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        -- pyright = {},
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
