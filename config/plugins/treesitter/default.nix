{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      json
      lua
      make
      markdown
      nix
      regex
      toml
      vim
      vimdoc
      xml
      yaml
    ];

    settings = {
      highlight = {
        enable = true;
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>uf";
      action = "<cmd>NvimTreeToggle<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
