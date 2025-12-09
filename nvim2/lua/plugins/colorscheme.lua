return {
  {
    "folke/tokyonight.nvim", -- プラグインのリポジトリ
    lazy = false,           -- 起動時にすぐにロードする (必須)
    priority = 1000,        -- 他のプラグインより早くロードする
    style = "night",
    transparent = true,
    opts = {
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
    },
  },
}
