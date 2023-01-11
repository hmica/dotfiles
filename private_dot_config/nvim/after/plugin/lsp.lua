local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({'tsserver', 'eslint','sumneko_lua','rust_analyzer'})
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Insert }
local cmp_mappings = lsp.defaults.cmp_mappings( {
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
 -- ['<C-d>'] = cmp.mapping.scroll_docs(-4),
 -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
 -- ['<C-e>'] = cmp.mapping.close(),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
})
lsp.setup()
