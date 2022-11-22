--[[ Highlite, a Neovim colorscheme template.
	* Author:     theRhasoldy (https://github.com/theRhasoldy)
	* Repository: https://github.com/nvim-highlite

	Initially forked from vim-rnb, a Vim colorsheme template:
	* Author:        Romain Lafourcade (https://github.com/romainl)
	* Canonical URL: https://github.com/romainl/vim-rnb
]]

vim.g.colors_name = "dahlia"

local hl = require("dahlia")

local background = { "#13151c", 1, "background" }

local white = { "#eeeeee", 2, "white" }
local black = { "#0F1115", 235, "black" }
local gray_darker = { "#36383c", 239, "darkergray" }
local gray_dark = { "#3c3e42", 236, "darkgrey" }
local gray = { "#707276", 244, "gray" }
local gray_light = { "#c0c2c6", 250, "lightgray" }

local cursor_line = { "#2e2930", 232, "cursorline" }

local red_dark = { "#c92b47", 124, "darkred" }
local red = { "#e64e6d", 203, "red" }

local tan = { "#E59875", 221, "tan" }
local yellow = { "#fbb45e", 227, "yellow" }
local orange = { "#F38337", 208, "orange" }

local green_dark = { "#028044", 113, "darkgreen" }
local green = { "#4DCB8F", 11, "green" }

local turqoise = { "#66c8aa", 48, "turqoise" }
local blue = { "#3a9cc1", 63, "darkblue" }

local pink = { "#fbaeb9", 217, "lightpink" }
local magenta = { "#e583a0", 168, "magenta" }
local magenta_dark = { "#b14f6a", 126, "darkmagenta" }
local purple = { "#c37dbf", 19, "purple" }

local highlight_group_normal = { fg = gray_light }

local highlight_groups = {

	-- Editor {{{
	Normal = { fg = white },
	NonText = { fg = gray },
	ColorColumn = { style = "inverse" },

	-- Cursor
	Cursor = { style = "inverse" },
	CursorLine = { bg = cursor_line },
	CursorIM = "Cursor",
	CursorColumn = { bg = gray_dark },

	Title = { fg = gray, style = "bold" },
	Border = { fg = gray_darker },
	VertSplit = "Border",
	BorderBG = "Border",
	FloatBorder = "Border",
	StatusLine = "Border",

	SignColumn = { fg = background },
	LineNr = { fg = gray_dark },
	CursorLineNr = function(self)
		return { fg = gray, bg = self.LineNr.bg, style = "bold" }
	end,

	QuickFixLine = function(self)
		return { bg = self.StatusLine.bg }
	end,

	EndOfBuffer = { fg = gray_darker },
	whitespace = { fg = gray_darker },
	MatchParen = { fg = red, style = { "bold", "underline" } },

	-- Pmenu
	Pmenu = { fg = white, bg = nil },
	PmenuSbar = { bg = nil },
	PmenuSel = { bg = cursor_line },
	PmenuThumb = { bg = gray_dark },

	-- Tabs
	TabLine = function(self)
		return { fg = highlight_group_normal.fg, bg = self.StatusLine.bg }
	end,
	TabLineFill = function(self)
		return { fg = self.TabLine.bg, bg = black }
	end,
	TabLineSel = function(self)
		return { fg = self.TabLine.fg, bg = highlight_group_normal.bg }
	end,

	-- Telescope
	TelescopeBorder = "Border",
	TelescopeTitle = "Title",
	TelescopeSelection = "CursorLine",

	-- Wilder
	WilderAccentSel = { fg = magenta, bg = nil, style = "bold" },
	WilderAccent = { fg = red, bg = cursor_line },
	WildMenu = "PmenuSel",

	-- Visual Mode
	Visual = { bg = gray_dark },
	VisualNOS = { bg = gray_darker },

	-- Folding
	Folded = { fg = pink, style = "italic" },
	FoldColumn = { fg = pink, style = "bold" },

	-- Files
	Directory = { fg = gray },
	DirectoryIcon = { fg = gray_dark },
	Marker = { fg = gray_light },
	File = { fg = magenta },
	Image = { fg = green },

	-- Syntax Highlighting
	Boolean = { fg = magenta, style = "italic" },
	Character = { fg = pink },
	Comment = { fg = gray, style = "italic" },
	Conceal = "NonText",
	Conditional = { fg = blue, style = "italic" },
	Constant = { fg = magenta },
	Decorator = { fg = magenta },
	Define = { fg = red, style = "italic" },
	Delimiter = { fg = red },
	Exception = { fg = orange, style = "bold" },
	Float = "Number",
	Function = { fg = red },
	Identifier = { fg = turqoise },
	Include = { fg = green, style = "nocombine" },
	Keyword = { fg = blue },
	Label = { fg = pink, style = "bold" },
	Number = { fg = pink },
	Operator = { fg = gray_light },
	PreProc = { fg = tan },
	Repeat = { fg = turqoise, style = "italic" },
	Special = { fg = blue, style = "bold" },
	SpecialChar = { fg = orange, style = "italic" },
	SpecialItalic = { fg = blue, style = "italic" },
	SpecialComment = { fg = gray, style = { "bold", "nocombine" } },
	SpecialKey = "Character",
	Statement = { fg = turqoise },
	StorageClass = { fg = orange, style = "bold" },
	String = { fg = purple },
	Structure = { fg = blue, style = "bold" },
	Tag = { fg = red, style = "italic" },
	Type = { fg = purple },
	Typedef = { fg = turqoise, style = "italic" },
	PunctDelimiter = { fg = turqoise },

	-- Prompts
	Todo = { fg = blue, style = "bold" },

	Substitute = { fg = background, bg = pink },

	Search = { style = { "underline", color = orange } },
	IncSearch = { fg = background, bg = orange },

	ModeMsg = { fg = white },
	MoreMsg = { fg = pink },
	Question = { fg = gray, style = "underline" },
	-- }}}

	-- Diagnostics {{{
	Warning = { fg = yellow, style = "bold" },
	Error = { fg = red_dark, style = "bold" },
	Info = { fg = gray, style = "italic" },
	Hint = { fg = magenta, style = "italic" },

	WarningMsg = "Warning",
	ErrorMsg = "Error",
	InfoMsg = "Info",
	HintMsg = "Hint",

	DiagnosticWarn = "Warning",
	DiagnosticError = "Error",
	DiagnosticInfo = "Info",
	DiagnosticHint = "Hint",

	DiagnosticUnderlineError = {},
	DiagnosticUnderlineHint = {},
	DiagnosticUnderlineInfo = {},
	DiagnosticUnderlineWarn = {},

	DiagnosticFloatingError = "ErrorMsg",
	DiagnosticSignError = "DiagnosticFloatingError",
	DiagnosticFloatingWarn = "WarningMsg",
	DiagnosticSignWarn = "DiagnosticFloatingWarn",
	DiagnosticFloatingHint = "HintMsg",
	DiagnosticSignHint = "DiagnosticFloatingHint",
	DiagnosticFloatingInfo = "InfoMsg",
	DiagnosticSignInfo = "DiagnosticFloatingInfo",

	LspDiagnosticsDefaultError = "DiagnosticError",
	LspDiagnosticsFloatingError = "DiagnosticFloatingError",
	LspDiagnosticsSignError = "DiagnosticSignError",
	LspDiagnosticsDefaultWarning = "DiagnosticWarn",
	LspDiagnosticsFloatingWarning = "DiagnosticFloatingWarn",
	LspDiagnosticsSignWarning = "DiagnosticSignWarn",
	LspDiagnosticsDefaultHint = "DiagnosticHint",
	LspDiagnosticsFloatingHint = "DiagnosticFloatingHint",
	LspDiagnosticsSignHint = "DiagnosticSignHint",
	LspDiagnosticsDefaultInformation = "DiagnosticInfo",
	LspDiagnosticsFloatingInformation = "DiagnosticFloatingInfo",
	LspDiagnosticsSignInformation = "DiagnosticSignInfo",
	LspDiagnosticsUnderlineError = "DiagnosticUnderlineError",
	LspDiagnosticsUnderlineHint = "DiagnosticUnderlineHint",
	LspDiagnosticsUnderlineInfo = "DiagnosticUnderlineInfo",
	LspDiagnosticsUnderlineWarning = "DiagnosticUnderlineWarn",

	-- }}}
	-- Debug {{{
	Debug = "WarningMsg",
	debugBreakpoint = "ErrorMsg",
	debugPC = "ColorColumn",
	-- }}}

	-- Git {{{
	DiffAdd = { fg = black, bg = green_dark },
	DiffChange = {},
	DiffDelete = function(self)
		return { fg = self.DiffAdd.fg, bg = red }
	end,
	DiffText = function(self)
		return { fg = self.DiffAdd.fg, bg = yellow }
	end,
	diffAdded = "DiffAdd",
	diffRemoved = "DiffDelete",

	gitcommitHeader = "SpecialComment",
	gitcommitDiscardedFile = "gitcommitSelectedFile",
	gitcommitOverFlow = "Error",
	gitcommitSelectedFile = "Directory",
	gitcommitSummary = "Title",
	gitcommitUntrackedFile = "gitcommitSelectedFile",
	gitconfigAssignment = "String",
	gitconfigEscape = "SpecialChar",
	gitconfigNone = "Operator",
	gitconfigSection = "Structure",
	gitconfigVariable = "Label",
	gitrebaseBreak = "Keyword",
	gitrebaseCommit = "Tag",
	gitrebaseDrop = "Exception",
	gitrebaseEdit = "Define",
	gitrebaseExec = "PreProc",
	gitrebaseFixup = "gitrebaseSquash",
	gitrebaseMerge = "PreProc",
	gitrebasePick = "Include",
	gitrebaseReset = "gitrebaseLabel",
	gitrebaseReword = "gitrebasePick",
	gitrebaseSquash = "Macro",
	gitrebaseSummary = "Title",

	-- Git Line Highlight
	GitGutterAdd = { fg = green },
	GitGutterChange = { fg = orange },
	GitGutterDelete = { fg = red },
	GitGutterChangeDelete = { fg = purple },

	GitSignsAdd = "GitGutterAdd",
	GitSignsChange = "GitGutterChange",
	GitSignsDelete = "GitGutterDelete",
	-- }}}

	Snippet = { fg = blue },

	Underlined = { fg = white, style = "underline", "bold" },
	Ignore = { fg = gray },

	--[[ 4.2.4. Popup Menu]]
	--[[ 4.2.5. Folds]]

	--[[ 4.2.6. Diffs]]
	--[[ 4.2.7. Searching]]

	--[[ 4.2.8. Spelling]]
	SpellBad = { style = { "undercurl", color = red } },
	SpellCap = { style = { "undercurl", color = yellow } },
	SpellLocal = { style = { "undercurl", color = green } },
	SpellRare = { style = { "undercurl", color = orange } },

	--[[ 4.3.38 Man ]]
	-- manBold = function(self) return vim.tbl_extend('force', self.mkdCode, {style = 'nocombine'}) end,
	manOptionDesc = "Special",
	manReference = "Tag",
	manUnderline = "Label",

	--[[ 4.4. Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.4.1. ALE ]]
	ALEErrorSign = "DiagnosticSignError",
	ALEWarningSign = "DiagnosticSignWarn",

	--[[ 4.4.4. vim-gitgutter / vim-signify / gitsigns.nvim ]]
	--[[ 4.4.12. LSPSaga ]]
	DefinitionCount = "Number",
	DefinitionIcon = "Special",
	ReferencesCount = "Number",
	ReferencesIcon = "DefinitionIcon",
	TargetFileName = "Directory",
	TargetWord = "Title",
	FinderVirtText = "Border",
	LspSagaHoverBorder = "Border",
	LspSagaDefPreviewBorder = "Border",
	LspSagaCodeActionTitle = "Special",
	LspSagaCodeActionContent = "Normal",
	LspSagaCodeActionBorder = { fg = red },
	LspSagaRenameBorder = { fg = red },

	--[[ 4.4.15. todo-comments.nvim ]]
	TodoFgFIX = function(self)
		return { fg = self.ErrorMsg.fg }
	end,
	TodoFgHACK = function(self)
		return { fg = self.Todo.bg }
	end,
	TodoFgNOTE = "HintMsg",
	TodoFgPERF = "InfoMsg",
	TodoFgTODO = { fg = turqoise, style = "italic" },
	TodoFgWARN = function(self)
		return { fg = self.WarningMsg.fg }
	end,

	TodoBgFIX = function(self)
		return { fg = black, bg = self.ErrorMsg.fg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoBgHACK = function(self)
		return { fg = black, bg = self.Todo.bg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoBgNOTE = function(self)
		return { fg = black, bg = self.Hint.bg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoBgPERF = function(self)
		return { fg = black, bg = self.Info.bg, style = { "bold", "italic", "nocombine" } }
	end,
	TodoBgTODO = { fg = black, bg = turqoise, style = { "bold", "italic", "nocombine" } },
	TodoBgWARN = function(self)
		return { fg = black, bg = self.Warning.bg, style = { "bold", "italic", "nocombine" } }
	end,

	TodoSignFIX = "TodoFgFIX",
	TodoSignHACK = "TodoFgHACK",
	TodoSignNOTE = "TodoFgNOTE",
	TodoSignPERF = "TodoFgPERF",
	TodoSignTODO = "TodoFgTODO",
	TodoSignWARN = "TodoFgWARN",

	Twilight = { fg = gray_dark, bg = nil },

	--[[ 4.4.16. nvim-cmp ]]
	CmpItemAbbr = "Operator",
	CmpItemAbbrMatchDefault = "Underlined",
	CmpItemAbbrMatchFuzzyDefault = { fg = highlight_group_normal.fg, style = { "nocombine", "underline" } },
	CmpItemKindClass = "CmpItemKindStructDefault",
	CmpItemKindColor = "Label",
	CmpItemKindConstant = "Constant",
	CmpItemKindConstructor = "CmpItemKindMethodDefault",
	CmpItemKind = "Type",
	CmpItemKindEnum = "CmpItemKindStructDefault",
	CmpItemKindEnumMember = "CmpItemKindConstantDefault",
	CmpItemKindEvent = "Repeat",
	CmpItemKindField = "Field",
	CmpItemKindFile = "File",
	CmpItemKindFolder = "CmpItemKindFileDefault",
	CmpItemKindFunction = "Function",
	CmpItemKindInterface = "Type",
	CmpItemKindKeyword = "Keyword",
	CmpItemKindMethod = "CmpItemKindFunctionDefault",
	CmpItemKindModule = "Include",
	CmpItemKindOperator = "Operator",
	CmpItemKindProperty = "CmpItemKindFieldDefault",
	CmpItemKindReference = "StorageClass",
	CmpItemKindSnippet = "Include",
	CmpItemKindStruct = "Structure",
	CmpItemKindText = "String",
	CmpItemKindTypeParameter = "Typedef",
	CmpItemKindUnit = "CmpItemKindStructDefault",
	CmpItemKindValue = "CmpItemKindConstantDefault",
	CmpItemKindVariable = "Variable",

	--[[ 4.4.17. packer.nvim ]]
	packerFail = "ErrorMsg",
	packerHash = "Number",
	packerPackageNotLoaded = "Ignore",
	packerStatusFail = "Statement",
	packerStatusSuccess = "packerStatusFail",
	packerSuccess = function(self)
		return { fg = green, style = self.packerFail.style }
	end,

	--Neo-tree
	NeoTreeRootName = "Special",
	NeoTreeFileName = "File",
	NeoTreeGitModified = "GitGutterChangeDelete",
	NeoTreeGitDeleted = "GitGutterDelete",
	NeoTreeGitAdded = "GitGutterAdd",

	-- Hop
	HopNextKey = { fg = magenta },
	HopNextKey1 = { fg = magenta },
	HopNextKey2 = { fg = magenta_dark },
	HopUnmatched = { fg = gray },

	-- Illuminate
	IlluminatedWordText = { style = "bold" },
	IlluminatedWordWrite = { style = "underline" },
	IlluminatedWordRead = { style = "bold" },
}

-- Treesitter highlight {{{
hl.highlight("@boolean", { fg = white, style = "bold" })
hl.highlight("@attribute", { fg = white, style = "bold" })
hl.highlight("@constructor", { fg = white, style = "bold" })
hl.highlight("@conditional", { fg = white, style = "bold" })
hl.highlight("@constant", { fg = white, style = "bold" })
hl.highlight("@const.builtin", { fg = white, style = "bold" })
hl.highlight("@const.macro", { fg = white, style = "bold" })
hl.highlight("@error", { fg = white, style = "bold" })
hl.highlight("@exception", { fg = white, style = "bold" })
hl.highlight("@field", { fg = white, style = "bold" })
hl.highlight("@float", { fg = white, style = "bold" })
hl.highlight("@func.builtin", { fg = white, style = "bold" })
hl.highlight("@func.macro", { fg = white, style = "bold" })
hl.highlight("@include", { fg = white, style = "bold" })
hl.highlight("@keyword", { fg = white, style = "bold" })
hl.highlight("@keyword.function", { fg = white, style = "bold" })
hl.highlight("@keyword.operator", { fg = white, style = "bold" })
hl.highlight("@label", { fg = white, style = "bold" })
hl.highlight("@method", { fg = white, style = "bold" })
hl.highlight("@namespace", { fg = white, style = "bold" })
hl.highlight("@number", { fg = white, style = "bold" })
hl.highlight("@operator", { fg = white, style = "bold" })
hl.highlight("@parameter", { fg = white, style = "bold" })
hl.highlight("@parameter.reference", { fg = white, style = "bold" })
hl.highlight("@property", { fg = white, style = "bold" })
hl.highlight("@punct.delimiter", { fg = white, style = "bold" })
hl.highlight("@punct.bracket", { fg = white, style = "bold" })
hl.highlight("@punct.special", { fg = white, style = "bold" })
hl.highlight("@repeat", { fg = white, style = "bold" })
hl.highlight("@string", { fg = white, style = "bold" })
hl.highlight("@string.regex", { fg = white, style = "bold" })
hl.highlight("@string.escape", { fg = white, style = "bold" })
hl.highlight("@tag", { fg = white, style = "bold" })
hl.highlight("@tag.delimiter", { fg = white, style = "bold" })
hl.highlight("@text", { fg = white, style = "bold" })
hl.highlight("@title", { fg = white, style = "bold" })
hl.highlight("@literal", { fg = white, style = "bold" })
hl.highlight("@type", { fg = white, style = "bold" })
hl.highlight("@type.builtin", { fg = white, style = "bold" })
hl.highlight("@variable", { fg = white, style = "bold" })
hl.highlight("@variable.builtin", { fg = white, style = "bold" })
hl.highlight("@strong", { fg = white, style = "bold" })
hl.highlight("@comment", { fg = white, style = "bold" })
hl.highlight("@function", { fg = white, style = "bold" })
hl.highlight("@symbol", { fg = white, style = "bold" })
hl.highlight("@emphasis", { fg = white, style = "bold" })
hl.highlight("@underline", { fg = white, style = "bold" })
hl.highlight("@strike", { fg = white, style = "bold" })
hl.highlight("@uri", { fg = white, style = "bold" })
hl.highlight("@current.scope", { fg = white, style = "bold" })
hl.highlight("TreesitterContext", { fg = white, style = "bold" })
-- }}}

local terminal_colors = {
	[1] = black,
	[2] = red_dark,
	[3] = green_dark,
	[4] = orange,
	[5] = blue,
	[6] = magenta_dark,
	[7] = purple,
	[8] = gray,
	[9] = gray_dark,
	[10] = red,
	[11] = green,
	[12] = yellow,
	[13] = turqoise,
	[14] = purple,
	[15] = turqoise,
	[16] = gray_light,
}

require(vim.g.colors_name)(highlight_group_normal, highlight_groups, terminal_colors)

-- Thanks to Romain Lafourcade (https://github.com/romainl) for the original template (romainl/vim-rnb).
