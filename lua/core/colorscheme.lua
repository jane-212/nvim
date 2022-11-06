vim.g.gruvbox_contrast_dark = "soft"

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
    print("Colorscheme gruvbox not found!")
    return
end
