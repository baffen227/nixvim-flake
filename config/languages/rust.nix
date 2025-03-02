{
  plugins = {
    rustaceanvim.enable = true;
    crates.enable = true;
  };
  extraConfigLua = # lua
    ''
      require("crates").setup({
              autoupdate = true,
            })
            require("crates").show()
    '';
}
