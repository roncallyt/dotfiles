local nnoremap = require("t7n.keymap").nnoremap
local vnoremap = require("t7n.keymap").vnoremap
local inoremap = require("t7n.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Vex<CR>")
nnoremap("<leader><CR>", "<cmd>so ~/.config/nvim/init.lua<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")

vnoremap("<leader>y", "\"+y");

nnoremap("<leader>p", "\"+p");
nnoremap("<leader>P", "\"+P");
vnoremap("<leader>p", "\"+p");
vnoremap("<leader>P", "\"+P");
