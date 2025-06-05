vim.g.mapleader = ","
vim.g.maplocalleader = ","

require("waengg.config.lazy")

vim.cmd [[ autocmd VimEnter * cd ~/dev ]]


vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- require("gruvbox").setup({
--     background = "dark",
--     terminal_colors = true, -- add neovim terminal colors
--     undercurl = false,
--     underline = false,
--     bold = false,
--     italic = 
--     {
--     strings = false,
--     emphasis = false,
--     comments = false,
--     operators = false,
--     folds = false,
--     },
--     strikethrough = false,
--     invert_selection = false,
--     invert_signs = false,
--     invert_tabline = false,
--     inverse = true, -- invert background for search, diffs, statuslines and errors
--     contrast = "hard", -- can be "hard", "soft" or empty string
--     palette_overrides = {},
--     overrides = {},
--     dim_inactive = false,
--     transparent_mode = false,
-- })
-- vim.cmd("colorscheme gruvbox")

require("ayu").setup({
    italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
    }
})
vim.cmd("colorscheme ayu")

vim.api.nvim_set_hl(0, 'LineNr', { fg = 'gray' })

-- require("nvim-treesitter.configs").setup {
--     ensure_installed = { "c", "cpp", "lua", "python", "rust", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

--     -- Install parsers synchronously (only applied to `ensure_installed`)
--     sync_install = false,

--     -- Automatically install missing parsers when entering buffer
--     -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--     auto_install = true,

--     -- List of parsers to ignore installing (or "all")
--     ignore_install = { "javascript" },

--     ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
--     -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

--     highlight = {
--         enable = true,

--         -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--         -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--         -- the name of the parser)
--         -- list of language that will be disabled
--         -- disable = { "c", "rust" },
--         -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
--         disable = function(lang, buf)
--             local max_filesize = 100 * 1024 -- 100 KB
--             local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--             if ok and stats and stats.size > max_filesize then
--                 return true
--             end
--         end,

--         -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--         -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--         -- Using this option may slow down your editor, and you may see some duplicate highlights.
--         -- Instead of true it can also be a list of languages
--         additional_vim_regex_highlighting = false,
--     },
-- }

-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<Leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
