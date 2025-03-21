-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {
  { "moll/vim-bbye", enable = true },
{
    'neovim/nvim-lspconfig',
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  }
}
end
