require('nvim-tree').setup{
    view = {
      hide_root_folder = true,
      signcolumn = "no",
      mappings = {
            list = {
                { key = "<C-k>", action = "" },
            },
      },
    }, 
}
