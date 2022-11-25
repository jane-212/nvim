local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
    return
end

gitsigns.setup({
  numhl = true,
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 0
  }
})
