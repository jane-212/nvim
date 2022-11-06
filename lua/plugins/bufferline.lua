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
        text_align = "left"
      }},
  
      close_command = "Bdelete! %d",
      right_mouse_command = "Bdelete! %d",
    }
})
