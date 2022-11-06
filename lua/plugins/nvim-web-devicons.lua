local setup, nvim_web_devicons = pcall(require, "nvim-web-devicons")
if not setup then
    return
end

nvim_web_devicons.get_icons()