vim.pack.add({
   "https://github.com/OXY2DEV/markview.nvim"
})

require "opts"
require "launch"

spec("plugin.colorscheme")
spec("plugin.markview")
spec("plugin.treesitter")
spec("plugin.telescope")
spec("plugin.fugitive")
spec("plugin.harpoon")
spec("plugin.mason")

require "plugin.lazy"
require "keymaps"

