-- Custom Key Mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- key mapping for opening insert mode by using arrow keys
map("n", "<Up>", "i", opts)
map("n", "<Down>", "i", opts)
map("n", "<Left>", "i", opts)
map("n", "<Right>", "i", opts)

-- key mapping for opening neo-tree with ctrl + e
map("n", "<c-e>", ":Neotree toggle<cr>", opts)

-- key mapping for focusing neo-tree with ctrl + w
map("n", "<c-w", ":Neotree focus toggle<cr>", opts)

-- key mapping for toggling the neotree with ctrl + e when in insert mode
map("i", "<C-e>", "<Esc>:Neotree toggle<CR>a", opts)

-- Key mapping for moving to the start of the line with Ctrl + Alt + Left Arrow
map("i", "<C-A-Left>", "<Esc>0i", opts)

-- Key mapping for moving to the end of the line with Ctrl + Alt + Right Arrow
map("i", "<C-A-Right>", "<Esc>$a", opts)

-- Key mapping for moving ten lines down with Ctrl + Alt + Down Arrow
map("i", "<C-A-Down>", "<Esc>10ji", opts)

-- Key mapping to move line up/down using alt + up/down
map("i", "<A-Up>", '<Esc>ddkPi', opts)

map("i", "<A-Down>", '<Esc>ddpi', opts)

-- Key mapping for moving ten lines up with Ctrl + Alt + Up Arrow
map("i", "<C-A-Up>", "<Esc>10ki", opts)

-- scroll up one line with Ctrl + Up Arrow (without moving the cursor)
map("i", "<C-Up>", "<Esc><C-y>a", opts)

-- Scroll down one line with Ctrl + Down Arrow (without moving the cursor)
map("i", "<C-Down>", "<Esc><C-e>a", opts)

-- Map + Enter to insert a new line below the cursor in insert mode
map("i", "<C-o>", "<Esc>o", opts)

-- Map Ctrl + d to select the word under the cursor in insert mode
map("i", "<C-d>", "<Esc>viw", opts)

-- Map Ctrl + Backspace to delete one word at a time in insert mode
map("i", "<C-H>", "<C-W>", opts)

-- Map Ctrl + Z to undo in Insert Mode
map("i", "<C-z>", "<Esc>ui", opts)

-- Map Ctrl + y to redo in Insert Mode
map("i", "<C-y>", "<Esc><C-R>a", opts)

-- Map Ctrl + C to copy selected text
map("v", "<C-c>", '"+y`>a', opts)

-- Map Ctrl + C to copy a line in insert mode
map("i", "<C-c>", '<Esc>"+yyi', opts)

-- Map Ctrl + V to paste paste selected text
map("i", "<C-v>", '<Esc>"+pa', opts)

-- Map Ctrl + shift + right to select text to the right
map("i", "<C-S-Right>", '<Esc>ve', opts)

-- Map Ctrl + shift + left to select text to the right
map("i", "<C-S-Left>", '<Esc>vb', opts)

-- Map Backsapce to delete selected text in visual mode
map("v", "<C-H>", 'di', opts)

-- Map ctrl + x to delete line in insert mode
map("i", "<C-x>", "<Esc>ddi", opts)

-- Map ctrl + x to cut text in visual mode
map("v", "<C-x>", '"+d<Esc>i', opts)

-- Shift + Arrow keys for selection in Normal mode
map("n", "<S-Up>", "v<Up>", opts)
map("n", "<S-Down>", "v<Down>", opts)
map("n", "<S-Left>", "v<Left>", opts)
map("n", "<S-Right>", "v<Right>", opts)

-- Shift + Arrow keys for movement in Visual mode
map("v", "<S-Up>", "<Up>", opts)
map("v", "<S-Down>", "<Down>", opts)
map("v", "<S-Left>", "<Left>", opts)
map("v", "<S-Right>", "<Right>", opts)

-- Shift + Arrow keys for selection in Insert mode (exit insert mode, enter visual, and move selection)
map("i", "<S-Up>", "<Esc>v<Up>", opts)
map("i", "<S-Down>", "<Esc>v<Down>", opts)
map("i", "<S-Left>", "<Esc>v<Left>", opts)
map("i", "<S-Right>", "<Esc>v<Right>", opts)

-- Map ctrl + s to save a file
map('i', '<C-s>', '<Esc><cmd> w <CR>i', opts)

-- Map ctrl + q to close a file
map('i', '<C-q>', '<Esc><cmd> q <CR>', opts)

-- Map ctrl + / to comment/uncomment code
map('i', '<C-_>', "<ESC><cmd>lua require('Comment.api').toggle.linewise.current()<CR>i", opts)

map('v', '<C-_>', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>i", opts)

-- Map ctrl + a to select all the text in a file
map('i', '<C-a>', '<Esc>ggVG<CR>', opts)

-- Map ctrl + n/p to navigate between prev/next buffer tabs
map('i', '<C-n>', '<Esc>:BufferLineCycleNext<CR>i', opts)
map('i', '<C-p>', '<Esc>:BufferLineCyclePrev<CR>i', opts)

-- Map Alt + left to create a horizontal split
map('i', '<C-\\>', '<Esc>:vsplit<CR>', opts)
map('i', '<C-A-\\>', '<Esc>:split<CR>', opts)

-- Map ctrl hjkl to navigate between splits
map('n', '<C-h>', '<Esc><C-w>hi', opts)
map('n', '<C-j>', '<Esc><C-w>ji', opts)
map('n', '<C-k>', '<Esc><C-w>ki', opts)
map('n', '<C-l>', '<Esc><C-w>li', opts)

-- Keybindings that don't work
-- map('n', 'l', ':Neotree reveal<CR>', opts)
-- map('n', 'h', ':Neotree close<CR>', opts)
-- map("i", "<C-x-Up>", '<Esc>"+yyo<Esc>ppi', opts)
-- map("i", "<C-x-Down>", '<Esc>"+yyO<Esc>ppi', opts)

-- TODOs: ---------------------------------------------------------------


-- general bindings
-- ctrl + enter to add a line below active line - substituted with ctrl + o
-- shift + alt + up/down to duplicate lines up/down
-- ctrl + space to open intellisense
-- ctrl + click and f12 to go to function definition
-- ctrl + d(n) for multi-cursor editing
-- ctrl + f to search for a work and replace instances incrementally
-- selection + tab for indenting selected text/lines

-- special bindings
    -- ctrl + shift + f for global search
    -- ctrl + j for opening the terminal
    -- ctrl + shift + g for opening git stuff
