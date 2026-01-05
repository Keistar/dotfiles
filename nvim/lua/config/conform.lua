require("conform").setup({
  format_on_save = function(buf)
    local name = vim.api.nvim_buf_get_name(buf)
    local basename = vim.fs.basename(name)
    if basename:match("%.blade.php$") or basename:match("%.php$") then
      return nil
    end

    return {}
  end,
  formatters_by_ft = {
    php = { "pint" },
  },
})
