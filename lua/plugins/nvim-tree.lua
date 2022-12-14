local setup, nvim_tree = pcall(require, "nvim-tree")
if not setup then
    return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
    view = {
      hide_root_folder = true,
      mappings = {
            list = {
                { key = "<C-k>", action = "" }
            }
      }
    },
    diagnostics = {
      enable = true,
      show_on_dirs = true
    }
})

