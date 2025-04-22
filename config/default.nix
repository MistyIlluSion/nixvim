{
  imports = [
    ./core/basic.nix
    ./core/keymap.nix
    ./plugins/lz-n
    ./plugins/colorschemes
    ./plugins/bufferline
    ./plugins/web-devicons
    ./plugins/nvim-autopairs
    ./plugins/nvim-surround

    # lsp related
    ./plugins/lsp
    ./plugins/blink
    ./plugins/none-ls
    ./plugins/lspsaga

    ./plugins/treesitter
    ./plugins/nvim-tree
    ./plugins/lualine
    ./plugins/indent-blankline
    ./plugins/telescope
  ];
}
