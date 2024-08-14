vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = explore  })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
  desc = "replace under cursor"
})
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>hc", ":checkhealth ")

vim.keymap.set("n", "<leader>w", "<cmd>write<CR>")
vim.keymap.set("n", "<leader>so", ":source<CR>")

-- keep values of registers unchanged with x and X
vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set({'n', 'x'}, 'X', '"_d')

vim.keymap.set({'n'}, '<leader>h', '<C-w>h')
vim.keymap.set({'n'}, '<leader>l', '<C-w>l')

-- `k` would be the second key of a mapping
-- vim.keymap.set("i", "jk", "<esc>")
k = function()
    vim.api.nvim_input("<esc>")
    local current_line = vim.api.nvim_get_current_line()
    if current_line:match("^%s+j$") then
        vim.schedule(function()
            vim.api.nvim_set_current_line("")
        end)
    end
end

