local whichKey = require("which-key")

whichKey.setup {
 plugins = {
   marks = true,
   registers = true,

   presets = {
     operators = true,
     motions = true,
     text_objects = true,
     windows = true,
     nav = true,
     z = true,
     g = true,
   },
 },

 ops = { gc = "Comments" },
 icons = {
   breadcrumb = ">>",
   separator = "->",
   group = "+",
 },

key = {
   scroll_down = "<c-d>",
   scroll_up = "<c-u>",
 },

 win = {
   border = "single",
   position = "bottom",
   margin = { 1, 0, 1, 0 },
   padding = { 1, 2, 1, 2 },
   winblend = 20,
   zindex = 1000,
 },
}

