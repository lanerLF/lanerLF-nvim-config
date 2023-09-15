require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'codedark',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    },
    lualine_c = {
      {
      'datetime',
      style = '%H:%M:%S'
      }
    }
  }
}

