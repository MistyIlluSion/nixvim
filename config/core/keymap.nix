{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = [ "n" "i" ];
      key = "<C-z>";
      action = "<cmd>undo<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
