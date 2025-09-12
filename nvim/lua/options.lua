-- file for all the neovim options.

local indent = 2
-- fo for short. sequence of letters which describes how automatic formatting
-- is to be done. see fo-table
vim.o.formatoptions = "jcroqlnt"

-- shm for shot. hepls avoid all the hit-enter prompts caused by file messages.
-- #doubt: don't understand it completely. what is hit-enter tho?
-- basically, it is used to avoid all the prompts that requires you to hit
-- enter. see :h shm for all the options.
vim.o.shortmess = "filnxtToOFWIcC"

-- bri for short. every wrapped line will have same amount of space as the
-- beginning of that line.
vim.opt.breakindent = true

-- ch for short. number of lines to use for command-line. when it's 0, no
-- command-line is shown. (ch = 0, is considered experimental)
vim.opt.cmdheight = 0

-- cot for short. a list of options for insert mode completion.
-- menuone: use popup menu to show possible completion, use menu also when
-- there's only one match.
-- noselect: do not insert any text for match until user selects a match.
-- see :h ins-completion for how to use.
vim.opt.completeopt = "menuone,noselect"

-- col for short. determine how text with the "conceal" syntax attribute is
-- shown. see :syn-conceal
-- 3 : concealed text is completely hidden.
vim.opt.conceallevel = 3

-- conf for short. usage :conf {command}
-- execute {command}, and use a dialog when an operation has to be confirmed.
vim.opt.confirm = true

-- cul for short. default: off
-- highlight the text line of the cursor with CursorLine.
vim.opt.cursorline = true

-- highlight the cursor column - might make the screen redrawing slow
-- vim.opt.cursorcolumn = true

-- et for short. default: off
-- use approriate # spaces to insert a <Tab>
vim.opt.expandtab = true

-- hid for short.
-- when on buffer becomes hidden when it is abandoned.
vim.opt.hidden = true

-- when true, highlight all the previous search pattern.
vim.opt.hlsearch = false

-- when on, the case of normal letter is ignored.
vim.opt.ignorecase = true

-- #doubt
vim.opt.inccommand = "nosplit"

-- when on, insert two spaces after a '.'. '?' and '!' with a join command.
vim.opt.joinspaces = false

-- influences when the last window will have status line.
-- 0 : never
vim.opt.laststatus = 0

-- #doubt: no help page
vim.opt.list = true

-- mouse support in different modes
-- a: all modes
vim.opt.mouse = "a"

-- show lines numbers
vim.opt.number = true

-- enable pseudo-transparency for the popup-menu.
-- 0: fully opaque, 100: fully transparent
vim.opt.pumblend = 10

-- enable relative numbering
vim.opt.relativenumber = true

-- minimum lines to keep above and below the cursor.
vim.opt.scrolloff = 8

-- change the effect of the :mksession command. each word enables saving and
-- restoring something.
-- buffer: hidden and unloaded buffer, not just those in windows
-- curdir = the current directory
-- tabpages = all the tab pages.
-- winsize = windows size
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }

-- round indent to multiple of 'shiftwidth'
vim.opt.shiftround = true

-- number of spaces to use for each step of auto(indent)
vim.opt.shiftwidth = indent

-- when on: if in ins, replace, or vis mode. put a message on the last line.
vim.opt.showmode = false

-- similar o scrolloff, but for side
vim.opt.sidescrolloff = 8

-- when and how to draw signcolum
-- "yes": always
vim.opt.signcolumn = "yes"

-- override the 'ignorecase' when there are uppercase characters in the
-- searchpattern.
vim.opt.smartcase = true

-- autoindent but smart
vim.opt.smartindent = true

-- when splitting a window, new window will be placed bwlow the current one.
vim.opt.splitbelow = true

-- determines the scroll behavior when oening, closing, or resizing horizontal
-- splits.
-- "screen": keep the text on the same screen line.
vim.opt.splitkeep = "screen"

-- number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = indent

-- use 24-bit rgb color in tui
vim.opt.termguicolors = true

-- timeout in ms to wait for a mapped sequence to complete.
vim.opt.timeoutlen = 300

-- vim automatically saves undo history to an undo fule when writing buffer to
-- a file.
vim.opt.undofile = true

-- if this many ms nothing is typed, the swap file will be written to disk.
vim.opt.updatetime = 200


vim.opt.wildmode = "longest:full,full"

-- localleader is same as leader except localleader is used for mapping which
-- are local to a buffer.
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- netrw config
vim.g.netrw_winsize = 20
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0

-- setup vim diagnostics
vim.diagnostic.config({
  signs = { priority = 9999 },
  underline = true,
  update_in_progress = false,
  virtual_text = { current_line = true, severity = { min = "HINT", max = "WARN" } },
  virtual_lines = { current_line = true, severity = { min = "ERROR" } },
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = true,
    header = "",
  },
})
