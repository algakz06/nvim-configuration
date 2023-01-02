-- Autocmd commands

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-------------------------------------------------------------------

autocmd("Filetype", {
	pattern = { "python" },
	command = "map <buffer> <c-h> :w<cr>:exec '!python3.11' shellescape(@%, 1)<cr>",
})

autocmd("Filetype", {
	pattern = { "python" },
	command = "imap <buffer> <c-h> <esc>:w<cr>:exec '!python3.11' shellescape(@%, 1)<cr>",
})

