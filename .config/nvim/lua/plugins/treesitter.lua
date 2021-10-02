local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
    return
end

ts_config.setup {
    ensure_installed = {
        "bash",
        "lua",
        "rust",
        "toml",
        "zig",
        "java",
        "javascript",
        "devicetree",
        "c",
        "cpp",
        "cmake"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}
