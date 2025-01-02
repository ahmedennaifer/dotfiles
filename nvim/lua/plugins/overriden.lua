return {
  {
    "scalameta/nvim-metals",
    ft = { "scala", "sbt", "java" },
    opts = function()
      local metals = require "metals"
      local astrolsp_avail, astrolsp = pcall(require, "astrolsp")
      local user_config = astrolsp_avail and astrolsp.lsp_opts "metals" or {}
      if require("astrocore").is_available "nvim-dap" then
        local on_attach = user_config.on_attach
        user_config.on_attach = function(...)
          if type(on_attach) == "function" then on_attach(...) end
          metals.setup_dap()
        end
      end
      return require("astrocore").extend_tbl(metals.bare_config(), user_config)
    end,
    config = function(self, opts)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = self.ft,
        group = vim.api.nvim_create_augroup("nvim-metals", { clear = true }),
        desc = "Initialize and attach nvim-metals",
        callback = vim.schedule_wrap(function() require("metals").initialize_or_attach(opts) end),
      })
    end,
  },
}
 
 
 
