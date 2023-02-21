local map = vim.keymap.set
local telescope_builtin = require('telescope.builtin')
local telescope_config = {}
telescope_config.project_files = function ()
    local opts = {}
    vim.fn.system('git rev-parse --is-inside-work-tree')
    if vim.v.shell_error == 0 then
        telescope_builtin.git_files(opts)
    else
        telescope_builtin.find_files(opts)
    end
end

map('i', 'jk', '<Esc>', {})
map('n', '<C-n>', '<cmd>:NvimTreeToggle<CR>', {})
map('n', '<C-p>', telescope_config.project_files, {})
map('n', '<C-s>', telescope_builtin.live_grep, {})
map('n', '<leader>t', '<cmd>:tabnew<CR>', {})
map('n', '<leader>n', '<cmd>:tabnext<CR>', {})
map('n', '<leader>p', '<cmd>:tabprevious<CR>', {})
map('n', '<leader>q', '<cmd>:tabclose<CR>', {})
map('n', '<leader>1', '<cmd>:tabnext 1<CR>', {})
map('n', '<leader>2', '<cmd>:tabnext 2<CR>', {})
map('n', '<leader>3', '<cmd>:tabnext 3<CR>', {})
map('n', '<leader>4', '<cmd>:tabnext 4<CR>', {})
map('n', '<leader>5', '<cmd>:tabnext 5<CR>', {})
map('n', '<leader>6', '<cmd>:tabnext 6<CR>', {})
map('n', '<leader>7', '<cmd>:tabnext 7<CR>', {})
map('n', '<leader>8', '<cmd>:tabnext 8<CR>', {})
map('n', '<leader>9', '<cmd>:tabnext 9<CR>', {})

-- map('n', '<leader>fg', builtin.live_grep, {})
-- map('n', '<leader>fb', builtin.buffers, {})
-- map('n', '<leader>fh', builtin.help_tags, {})
