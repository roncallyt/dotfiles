require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "html",
    "php",
    "scss",
    "javascript",
    "typescript",
    "c",
    "lua",
    "vim",
    "vimdoc",
    "sql",
    "v",
    "vue",
    "yaml",
    "json",
    "java",
    "gitignore",
    "css",
    "bash"
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
