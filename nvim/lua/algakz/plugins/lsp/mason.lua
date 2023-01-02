local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    return
end
-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "pyright",
        "html",
        "cssls",
        "jsonls",
        "sumneko_lua",
        "rust_analyzer"
    },
    automatic_installation = true,
})

mason_null_ls.setup({
  -- list of formatters & linters for mason to install
  ensure_installed = {
    "hadolint", -- docker linter
    "stylua", -- lua formatter
    "flake8", -- linter for python
    "black" -- foramtter for python
  },
  -- auto-install configured formatters & linters (with null-ls)
  automatic_installation = true,
})
