{ ... }:
{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        always_show_bufferline = true;
        diagnostics = "nvim_lsp";
        diagnostics_indicator = ''
          function (_, _, diagnostics_dict, _)
            local indicator = " "
            for level, number in pairs(diagnostics_dict) do
              local symbol
              if level == "error" then
                symbol = " "
              elseif level == "warning" then
                symbol = " "
              else
                symbol = " "
              end
              indicator = indicator .. number .. symbol
            end
            return indicator
          end
        '';
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>bh";
      action = ":BufferLineCyclePrev<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>bl";
      action = ":BufferLineCycleNext<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>bp";
      action = ":BufferLinePick<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>bd";
      action = ":bdelete<CR>";
      options = {
        silent = true;
      };
    }
  ];
}
