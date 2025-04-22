{ ... }:
{
  plugins.lualine = {
    enable = true;
    settings = {
      extensions = [
        "nvim-tree"
      ];

      sections = {
        lualine_b = [
          "branch"
          "diff"
        ];
      };
    };
  };
}
