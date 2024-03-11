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

-- Toggle Colemak mappings

local customMappingsActive = false

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function applyCustomMappings()
  -- Colemak mappings
  map("", "m", "h", {})
  map("", "n", "j", {})
  map("", "e", "k", {})
  map("", "i", "l", {})
  map("", "h", "m", {})
  map("", "j", "n", {})
  map("", "k", "e", {})
  map("", "l", "i", {})

  -- Extended mappings
  map("", "M", "0", {})
  map("", "I", "$", {})
end

local function clearCustomMappings()
  -- Clear custom mappings by setting them to do nothing
  -- This is a basic approach; adjust based on your needs
  map("", "m", "<nop>", {})
  map("", "n", "<nop>", {})
  map("", "e", "<nop>", {})
  map("", "i", "<nop>", {})
  map("", "h", "<nop>", {})
  map("", "j", "<nop>", {})
  map("", "k", "<nop>", {})
  map("", "l", "<nop>", {})

  map("", "M", "<nop>", {})
  map("", "I", "<nop>", {})
end

_G.toggleCustomMappings = function()
  if customMappingsActive then
    clearCustomMappings()
  else
    applyCustomMappings()
  end
  customMappingsActive = not customMappingsActive
end

-- Setup a keybinding to toggle the mappings
map("n", "<leader>tk", "<cmd>lua toggleCustomMappings()<CR>", { desc = "Toggle Colemak Mappings" })
