-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
local o = vim.opt
local g = vim.g

o.mouse = ""
o.shiftwidth = 4	-- spaces inserted with automated tab spacing
o.tabstop = 4	-- spaces inserted when manually pressing tab
o.number = true	-- display line numbers when editing files
o.relativenumber = true -- display distance of surrounding lines relative to current
o.ruler = true -- display line and column of cursor position (I''m pretty sure this is true by default?)
o.swapfile = false -- disable swapfiles. I'm sure this will never backfire :>
o.colorcolumn = "81" -- add colored line after 80 characters, used as a reference to not create lines that are too long
o.showmatch = true -- briefly flash matching bracket when closing brackets
o.list = true
o.listchars:append({ tab = '  |', trail = '◦' }) -- display certain whitespace characters
o.clipboard = "unnamedplus" -- paste buffer == system clipboard
o.scrolloff = 5 -- always display some lines above/below cursor
o.statusline= "%<%f %h%w%m%r %=%{% &showcmdloc == 'statusline' ? '%-10.S ' : '' %}%{% exists('b:keymap_name') ? '<'..b:keymap_name..'> ' : '' %}%{% &busy > 0 ? '◐ ' : '' %}%{% luaeval('(package.loaded[''vim.diagnostic''] and vim.diagnostic.status() .. '' '') or '''' ') %}%{% &ruler ? ( &rulerformat == '' ? '%-14.(%l/%L,%c%V%) %P' : &rulerformat ) : '' %}"
vim.diagnostic.config({
	virtual_text = true
})

g.mapleader = " " -- now I need to use it for trouble.nvim I remember what this is for
g.maplocalleader = "\\"
