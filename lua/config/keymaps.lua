-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- km.set(
--   "mode",              -- Mode in which the keymap is active (e.g., 'n' for normal mode)
--   "key_combination",   -- Key combination to trigger the setting change (e.g., '<leader>x')
--   function()
--     vim.opt.your_option = "value"  -- Replace 'your_option' with the option, 'value' with its new value
--   end,
--   { noremap = true, silent = true, desc = "Description of your keymap" }
-- )

local which_key = require("which-key")

which_key.register({
  ["<leader>t"] = { name = "Toggles" },
})

local km = vim.keymap

km.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume telescope" }
)

km.set("n", "<leader>tw", function()
  local current_value = vim.wo.wrap
  vim.wo.wrap = not current_value
end, { noremap = true, silent = true, desc = "Toggle wraparound" })
