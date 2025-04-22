{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        completion = {
          documentation = {
            auto_show = true;
          };
        };
        keymap = {
          preset = "super-tab";
        };
        sources = {
          default = [
            "buffer"
            "lsp"
            "path"
            "snippets"
          ];
        };
        cmdline = {
          completion = {
            menu = {
              auto_show = true;
            };
          };
        };
      };
    };
  };
}
