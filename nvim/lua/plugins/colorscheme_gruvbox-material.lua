-- plugin source: https://github.com/sainnhe/gruvbox-material

return {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        --vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_foreground = 'mix' -- default is material
		vim.g.gruvbox_material_transparent_background = 1
		vim.g.gruvbox_material_ui_contrast = 'low'
		vim.g.gruvbox_material_statusline_style = 'material'
        vim.cmd.colorscheme('gruvbox-material')
      end,
}
