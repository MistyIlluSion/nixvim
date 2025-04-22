{
  plugins = {
    lsp-format = {
      enable = true;
    };

    lsp = {
      enable = true;
      servers = {
        lua_ls = {
          enable = true;
        };
        nixd = {
          enable = true;
        };
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        pyright = {
          enable = true;
        };
      };
    };
  };

  extraConfigLua = ''
    vim.diagnostic.config({
      virtual_text = true,
      update_in_insert = true,
    })

    config = function(_, opts)
      local lspconfig = require('lspconfig')
      for server, config in pairs(opts.servers) do
        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end
  '';
}
