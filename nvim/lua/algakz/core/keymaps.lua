vim.g.keyleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<space>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

-- keymap for tabs
keymap.set("n", "<space>sv", "<C-w>v") -- create new window by vertical
keymap.set("n", "<space>sh", "<C-w>s") -- create new window by horizontal
keymap.set("n", "<space>se", "<C-w>=") -- make windows equal
keymap.set("n", "<space>sx", ":close<CR>") -- close window

keymap.set("n", "<space>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<space>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<space>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<space>tp", ":tabp<CR>") --  go to previous tab

-- plugin keybinds
-- nvim-tree
keymap.set("n", "<space>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- vim-maximizer
keymap.set("n", "<space>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- transparent
keymap.set("n", "<space>tt", ":TransparentToggle<CR>") -- toggle transparent
