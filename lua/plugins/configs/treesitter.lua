local options = {
  ensure_installed = { "lua" },
  parsers = function()
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.hypr = {
      install_info = {
        url = "https://github.com/luckasRanarison/tree-sitter-hypr",
        files = { "src/parser.c" },
        branch = "master",
      },
      filetype = "hypr",
    }
  end,

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return options
