return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable the default lua_ls setup
        lua_ls = {
enabled = false,
},
      },
    },
  },
}
