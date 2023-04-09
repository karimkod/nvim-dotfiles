-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup_servers({'dartls', force = true})
lsp.setup_servers({'csharp_ls', forcre = true})
lsp.setup_servers({'lua', forcre = true})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})


lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.set_preferences({
	sign_icons = { }
})


lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr}
  --local bind = vim.keymap.set

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>ve", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "ge", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "gE", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>cc", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>frf", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  --vim.keymap.set("i", "<leader>gh", function() vim.lsp.buf.signature_help() end, opts)
end)


vim.lsp.handlers["textDocument/publishDiagnostics"] =
vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        virtual_text = true,
    }
)


lsp.nvim_workspace()

lsp.setup()

