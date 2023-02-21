local g = vim.g
g.mapleader = ","
g.localleader = "\\"

g.t_co = 256
g.background = "dark"
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
