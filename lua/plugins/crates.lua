local setup, crates = pcall(require, "crates")
if not setup then
    return
end

crates.setup()

