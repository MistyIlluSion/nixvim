{ ... }:
{
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources = {
      formatting = {
        nixfmt = {
          enable = true;
        };
        stylua = {
          enable = true;
        };
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" "v" ];
      key = "<leader>lf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
      };
    }
  ];
}
