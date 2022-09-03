require("bufferline").setup {
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
}