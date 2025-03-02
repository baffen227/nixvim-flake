{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./functions.nix

    ./plugins/lsp/lsp.nix
    ./plugins/lsp/none-ls.nix
    ./plugins/lsp/conform.nix
    ./plugins/lsp/trouble.nix
    ./plugins/lsp/lspsaga.nix
    ./languages

    ./plugins/telescope.nix

    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix

    ./plugins/floaterm.nix
    ./plugins/neo-tree.nix
    ./plugins/treesitter.nix
    ./plugins/completion.nix
    ./plugins/web-devicons.nix
    #./plugins/dap.nix
  ];

  colorschemes.gruvbox.enable = true;

  extraPackages = with pkgs; [
    # Debuggers
    lldb_17
  ];
}
