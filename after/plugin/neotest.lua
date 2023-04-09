
local neotest = require('neotest');

neotest.setup({
  adapters = {
    require("neotest-dotnet")({
      discovery_root = "solution"
    }),
    require("neotest-dart")
  },
})



vim.keymap.set("n", "<leader>ut", function() neotest.summary.open() end)
vim.keymap.set("n", "<leader>tt", function() neotest.run.run() end)
vim.keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand('%')) end)
