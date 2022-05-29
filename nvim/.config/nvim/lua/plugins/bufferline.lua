require("bufferline").setup {
  options = {
    numbers = "ordinal",
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    show_close_icon = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " or "" )
        s = s .. n .. sym
      end
      return s
    end
  }
}
