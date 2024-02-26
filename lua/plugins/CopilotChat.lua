return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
      debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
      disable_extra_info = "no", -- Disable extra information (e.g: system prompt) in the response.
      language = "English", -- Copilot answer language settings when using default prompts. Default language is English.
      -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
      -- temperature = 0.1,
    },
    build = function()
      vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
    end,
    event = "VeryLazy",
    -- dependencies = {
    --   "nvim-telescope/telescope.nvim",
    --   "nvim-lua/popup.nvim",
    -- },
    -- config = function()
    --   local present, wk = pcall(require, "which-key")
    --   if not present then
    --     return
    --   end
    --
    --   wk.register({
    --     c = {
    --       c = {
    --         name = "Copilot Chat",
    --       },
    --     },
    --   }, {
    --     mode = "n",
    --     prefix = "<leader>",
    --     silent = true,
    --     noremap = true,
    --     nowait = false,
    --   })
    -- end,
    keys = {
      -- { "<leader>ccb", "<cmd>CopilotChatBuffer<cr>", desc = "CopilotChat - Chat with current buffer" },
      -- {
      --   "<leader>cch",
      --   function()
      --     require("CopilotChat.code_actions").show_help_actions()
      --   end,
      --   desc = "CopilotChat - Help actions",
      -- },
      -- -- Show prompts actions with telescope
      -- {
      --   "<leader>ccp",
      --   function()
      --     require("CopilotChat.code_actions").show_prompt_actions()
      --   end,
      --   desc = "CopilotChat - Help actions",
      -- },
      -- {
      --   "<leader>ccp",
      --   ":lua require('CopilotChat.code_actions').show_prompt_actions(true)<CR>",
      --   mode = "x",
      --   desc = "CopilotChat - Prompt actions",
      -- },
      {
        "<leader>ccb",
        function()
          local input = vim.fn.input("Ask Copilot: ")
          if input ~= "" then
            vim.cmd("CopilotChatBuffer " .. input)
          end
        end,
        desc = "CopilotChat - Chat with current buffer",
      },
      { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
      { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
      {
        "<leader>ccT",
        "<cmd>CopilotChatVsplitToggle<cr>",
        desc = "CopilotChat - Toggle Vsplit", -- Toggle vertical split
      },
      {
        "<leader>ccv",
        ":CopilotChatVisual",
        mode = "x",
        desc = "CopilotChat - Open in vertical split",
      },
      {
        "<leader>ccx",
        "<cmd>CopilotChatInPlace<cr>",
        mode = "x",
        desc = "CopilotChat - Run in-place code",
      },
      {
        "<leader>ccf",
        "<cmd>CopilotChatFixDiagnostic<cr>", -- Get a fix for the diagnostic message under the cursor.
        desc = "CopilotChat - Fix diagnostic",
      },
      {
        "<leader>ccr",
        "<cmd>CopilotChatReset<cr>", -- Reset chat history and clear buffer.
      },
      -- Create input for CopilotChat
      {
        "<leader>cci",
        function()
          local input = vim.fn.input("Ask Copilot: ")
          if input ~= "" then
            vim.cmd("CopilotChat " .. input)
          end
        end,
        desc = "CopilotChat - Chat with yank register",
      },
    },
  },
}
