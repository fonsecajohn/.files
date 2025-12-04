--jk vira esc 
vim.keymap.set("i","jk","<ESC>")

-- leader = espaço
vim.g.mapleader = " "

-- leader pv sai do arquivo
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- highlight no visual mode SHIFT + (j ou k) move a linha
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- pula linhas mas deixa o cursor no meio usando ctrl + (d ou u)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--mesma coisa do anterior mas em relacao a pesquisa 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- tira o highlight da palavra depois que eu não quero mais pesquisar ela
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

--manter a palavra no buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

--copiar o paragrafo inteiro com leader+y + a+p
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- abre um terminal 
vim.keymap.set('n', '<leader>h', function()
-- Muda para o diretório do arquivo atual
local dir = vim.fn.expand('%:p:h')
vim.cmd('lcd ' .. dir)
-- Abre o terminal abaixo
vim.cmd('belowright split | terminal')
-- Entra em modo insert automaticamente
vim.cmd('startinsert')
end, { desc = "Abrir terminal abaixo no diretório do arquivo atual" })

