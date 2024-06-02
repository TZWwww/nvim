local opts = {
    noremap = true,
    silent = true,
}

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>m", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>j", ":NvimTreeFocus<CR>", opts)
vim.keymap.set("n", "<leader>p", ":BufferLineCyclePrev<cr>", {silent = true})
vim.keymap.set("n", "<leader>n", ":BufferLineCycleNext<cr>", {silent = true})
vim.keymap.set("n", "<leader>d", ":bd<cr>", {silent = true})

vim.keymap.set("n", "<leader>s", ":w<cr>", {silent = true})
vim.keymap.set("n", "<leader>q", ":x<cr>", {silent = true})

vim.keymap.set("n", "<leader>h", "<C-w>h", {silent = true})
vim.keymap.set("n", "<leader>l", "<C-w>l", {silent = true})

vim.keymap.set("n", "<C-u>", "<C-r>", opts)
vim.keymap.set("n", "<leader><leader>", "<Cmd>execute 'normal! o' | startinsert<CR>pdb.set_trace()<Esc>", { noremap = true, silent = true })



