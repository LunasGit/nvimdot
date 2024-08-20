return
  {
      "Rentib/cliff.nvim",
      keys = {
          { '<c-j>', mode = { 'n', 'v', 'o' }, function() require("cliff").go_down() end },
          { '<c-k>', mode = { 'n', 'v', 'o' }, function() require("cliff").go_up()   end },
      },
  }
