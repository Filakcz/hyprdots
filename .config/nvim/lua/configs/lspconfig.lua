require("nvchad.configs.lspconfig").defaults()

local servers = { "luals", "pyright"}
vim.lsp.enable(servers)

local lspconfig = require("lspconfig")
local pid = vim.fn.getpid()

vim.lsp.config("omnisharp", {
  cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(pid) },
  filetypes = { "cs" }
})
vim.lsp.enable("omnisharp")

lspconfig.asm_lsp = {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/asm-lsp" },
  filetypes = { "asm", "s", "S" },
  root_dir = vim.fs.dirname(vim.fs.find({ ".asm-lsp.toml" }, { upward = true })[1]) or vim.loop.cwd(),
}
vim.lsp.enable("asm_lsp")

vim.filetype.add({
  extension = {
    asm = "asm",
  },
})
