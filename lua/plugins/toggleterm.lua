return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    vim.api.nvim_command("augroup terminal_setup | au!")
    vim.api.nvim_command("autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i")
    vim.api.nvim_command("augroup end")

    require("toggleterm").setup({
      start_in_insert = true,
      persist_mode = true,
    })
  end,
}
