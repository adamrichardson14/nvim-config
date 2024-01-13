local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- nvim-tree
keymap.set("n", "<leader>mm", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

keymap.set("n", "<C-h>", [[<Cmd>wincmd h<CR>]], opts) -- Navigate Left
keymap.set("n", "<C-j>", [[<Cmd>wincmd j<CR>]], opts) -- Navigate Down
keymap.set("n", "<C-k>", [[<Cmd>wincmd k<CR>]], opts) -- Navigate Up
keymap.set("n", "<C-l>", [[<Cmd>wincmd l<CR>]], opts) -- Navigate Right

keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts) -- Navigate Left
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts) -- Navigate Down
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts) -- Navigate Up
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts) -- Navigate Right-- Window Management

-- Telescope
keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", opts)
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- multi-line moving
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

--Copy/Paste
keymap.set("v", "<leader>p", '"_dP', opts)
keymap.set("v", "<leader>y", '"+y', opts)
keymap.set("n", "<leader>y", '"+y', opts)
keymap.set("n", "<leader>Y", 'gg"+yG', opts)
keymap.set("n", "<C-f>", ":silent !tmux neww tmux-sessionizer<CR>", opts)
keymap.set("n", "<leader>x", ":!chmod +x %<CR>", opts)

keymap.set("n", "<C-s>", ":w<CR>", opts)
keymap.set("n", "Ï", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
