return {
  "vimwiki/vimwiki",

  -- Need to use init instead of config, because the paths need to because
  -- set before the plugin loads.
  init = function()
    vim.g.vimwiki_links_space_char = '-'
    vim.g.vimwiki_path = '~/vimwiki'
    vim.g.vimwiki_syntax = 'markdown'
    vim.g.vimwiki_ext = 'md'
  end,

  config = function()
  end
}
