{ ... }:
{
  plugins.lspsaga = {
    enable = true;
    rename = {
      keys = {
        exec = "<CR>";
        quit = [
          "<Esc>"
        ];
      };
    };
    finder = {
      keys = {
        quit = [ "q" "<Esc>" ];
        toggleOrOpen = "<CR>";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>lr";
      action = "<cmd>Lspsaga rename<CR>";
      options = {
        desc = "Rename";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lc";
      action = "<cmd>Lspsaga code_action<CR>";
      options = {
        desc = "Code Action";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>Lspsaga finder def<CR>";
      options = {
        desc = "Goto Definition";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lh";
      action = "<cmd>Lspsaga hover_doc<CR>";
      options = {
        desc = "Hover Doc";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lR";
      action = "<cmd>Lspsaga finder ref<CR>";
      options = {
        desc = "Goto References";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ln";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options = {
        desc = "Next Diagnostic";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>lp";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      options = {
        desc = "Previous Diagnostic";
        silent = true;
      };
    }
  ];
}
