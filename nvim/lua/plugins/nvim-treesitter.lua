return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate'
}

-- I cannot get autoinstall to work for neither TS or Mason,
-- Manually install parsers using :TSUpdate [language] in nvim
