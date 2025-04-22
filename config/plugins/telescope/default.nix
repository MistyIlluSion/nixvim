{
  plugins.telescope = {
    enable = true;
    settings = {
      defaults = {
        file_ignore_patterns = [
          ".^git/"
          "^__pychache__/"
          "%.ipynb"
        ];
      };
    };
    extensions = {
      fzf-native = {
        enable = true;
        settings = {
          fuzzy = true;
          override_generic_sorter = true;
          override_file_sorter = true;
          case_mode = "smart_case";
        };
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fb";
      action = "<cmd>Telescope buffers<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
