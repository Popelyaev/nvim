return {
   "jackMort/ChatGPT.nvim",
   event = "VeryLazy",
   config = function()
      require("chatgpt").setup({
         api_key_cmd = os.getenv("OPENAI_API_KEY"),
         model = "gpt-3.5-turbo",
      })
   end,
   dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
   },
}
