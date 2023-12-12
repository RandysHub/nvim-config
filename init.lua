-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local harpoon = require("harpoon")

-- REQUIRED
-- REQUIRED
harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():append()
end)
vim.keymap.set("n", "<leader>m", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-a>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-c>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-n>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-b>", function()
  harpoon:list():select(4)
end)
