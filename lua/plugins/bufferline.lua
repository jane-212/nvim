local setup, bufferline = pcall(require, "bufferline")
if not setup then
    return
end

bufferline.setup({
    options = {
      offsets = {{
        filetype = "NvimTree",
        text = "Workspace",
        highlight = "Directory",
        text_align = "center",
        separator = false
      }},
      indicator = {
        style = "underline"
      },
      close_command = "Bdelete! %d",
      diagnostics = "coc"
    }
})

