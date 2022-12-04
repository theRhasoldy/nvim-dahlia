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
local black = { "#0F1115", 3, "black" }
local gray_darker = { "#36383c", 4, "darkergray" }
local gray_dark = { "#3c3e42", 5, "darkgray" }
local gray = { "#707276", 6, "gray" }
local gray_light = { "#c0c2c6", 7, "lightgray" }

local cursor_line = { "#2e2930", 8, "cursorline" }

local red = { "#FF5E77", 9, "red" }
local red_accent = { "#EC6A88", 10, "redaccent" }

local yellow = { "#ffcda2", 11, "yellow" }
local tan = { "#E59875", 12, "tan" }
local orange = { "#f7a881", 13, "orange" }

local pink = { "#e4abaf", 14, "pink" }
local magenta = { "#db8fb0", 15, "magenta" }
local purple = { "#bb98db", 16, "purple" }

local blue = { "#5ba3e3", 17, "blue" }

local green = { "#64d08d", 18, "green" }

local cyan = { "#89DDFF", 19, "cyan" }

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
	Boolean = { fg = green, style = "italic" },
	Variable = { fg = red_accent },
	Conditional = { fg = purple, style = "italic" },
	Repeat = { fg = purple, style = "italic" },
	Character = { fg = pink },
	Keyword = { fg = magenta, style = "bold" },
	Constant = { fg = green, style = "italic" },
	Function = { fg = purple, style = "bold" },
	Delimiter = { fg = magenta },
	Type = { fg = red_accent },
	String = { fg = pink },
	Include = { fg = green },
	Number = { fg = yellow },
	Float = "Number",
	Comment = { fg = gray, style = "italic" },
	Operator = { fg = pink },
	Tag = { fg = magenta, style = "bold" },
	Conceal = "NonText",
	Decorator = { fg = magenta },
	Define = { fg = red, style = "italic" },
	Exception = { fg = orange, style = "bold" },
	Identifier = { fg = cyan },
	Label = { fg = pink, style = "bold" },
	PreProc = { fg = tan },
	Special = { fg = blue, style = "bold" },
	SpecialChar = { fg = orange, style = "italic" },
	SpecialItalic = { fg = blue, style = "italic" },
	SpecialComment = { fg = gray, style = { "bold", "nocombine" } },
	SpecialKey = "Character",
	Statement = { fg = cyan },
	StorageClass = { fg = orange, style = "bold" },
	Structure = { fg = blue, style = "bold" },
	Typedef = { fg = cyan, style = "italic" },
	PunctDelimiter = { fg = cyan },

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
	Error = { fg = red, style = "bold" },
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
	DiffAdd = { fg = black, bg = green },
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

	-- Spelling
	SpellBad = { style = { "undercurl", color = red } },
	SpellCap = { style = { "undercurl", color = yellow } },
	SpellLocal = { style = { "undercurl", color = green } },
	SpellRare = { style = { "undercurl", color = orange } },

	-- MAN
	manOptionDesc = "Special",
	manReference = "Tag",
	manUnderline = "Label",

	-- LspSaga
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

	-- Todo
	TodoFgFIX = function(self)
		return { fg = self.ErrorMsg.fg }
	end,
	TodoFgHACK = function(self)
		return { fg = self.Todo.bg }
	end,
	TodoFgNOTE = "HintMsg",
	TodoFgPERF = "InfoMsg",
	TodoFgTODO = { fg = cyan, style = "italic" },
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
	TodoBgTODO = { fg = black, bg = cyan, style = { "bold", "italic", "nocombine" } },
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

	-- CMP
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
	HopNextKey = { fg = pink },
	HopNextKey1 = { fg = pink },
	HopNextKey2 = { fg = magenta },
	HopUnmatched = { fg = gray },

	-- Illuminate
	IlluminatedWordText = { style = "bold" },
	IlluminatedWordWrite = { style = "underline" },
	IlluminatedWordRead = { style = "bold" },

	-- Treesitter highlight {{{
	["@boolean"] = { fg = green, style = "italic" },
	["@variable"] = { fg = red_accent },
	["@variable.builtin"] = { fg = red_accent },
	["@type.definition"] = { fg = red_accent },
	["@field"] = { fg = magenta, style = "bold" },
	["@parameter"] = { fg = magenta, style = "bold" },
	["@label"] = { fg = magenta, style = "bold" },
	["@attribute"] = { fg = green, style = "bold" },
	["@operator"] = { fg = pink, style = "bold" },
	["@include"] = { fg = green },
	["@constant"] = { fg = green, style = "italic" },
	["@const.builtin"] = { fg = green, style = "italic" },
	["@const.macro"] = { fg = green, style = "italic" },
	["@keyword"] = { fg = magenta, style = "bold" },
	["@keyword.function"] = { fg = purple },
	["@keyword.operator"] = { fg = green },
	["@keyword.return"] = { fg = orange },
	["@function"] = { fg = red_accent },
	["@function.call"] = { fg = blue },
	["@function.builtin"] = { fg = red_accent },
	["@function.macro"] = { fg = red_accent },
	["@property"] = { fg = purple },
	["@type"] = { fg = red_accent },
	["@method"] = { fg = blue },
	["@error"] = { fg = blue, style = "bold" },
	["@string"] = { fg = pink },
	["@comment"] = { fg = gray, style = "italic" },
	["@punctuation.bracket"] = { fg = purple },
	["@constructor"] = { fg = blue },
	["@number"] = { fg = yellow },
	["@conditional"] = { fg = purple, style = "italic" },
	["@repeat"] = { fg = purple, style = "italic" },
	["@tag"] = { fg = magenta, style = "bold" },
	["@tag.attribute"] = { fg = red_accent, style = "bold" },
	["@tag.delimiter"] = { fg = magenta, style = "bold" },
	["@uri"] = { fg = white, style = "bold" },
	["@text"] = { fg = white },
	["@text.uri"] = { fg = purple },
	["@text.title"] = { fg = blue },
	["@exception"] = { fg = white },
	["@float"] = { fg = white },
	["@namespace"] = { fg = white },
	["@parameter.reference"] = { fg = white },
	["@punct.delimiter"] = { fg = white },
	["@punct.special"] = { fg = white },
	["@string.regex"] = { fg = white },
	["@string.escape"] = { fg = white },
	["@title"] = { fg = white },
	["@literal"] = { fg = white },
	["@type.builtin"] = { fg = white },
	["@strong"] = { fg = white },
	["@symbol"] = { fg = white },
	["@emphasis"] = { fg = white },
	["@underline"] = { fg = white },
	["@strike"] = { fg = white },
	["@current.scope"] = { fg = white },
	["TreesitterContext"] = { fg = white },
	-- }}}
}

local terminal_colors = {
	[1] = black,
	[2] = red,
	[3] = green,
	[4] = orange,
	[5] = blue,
	[6] = magenta,
	[7] = purple,
	[8] = gray,
	[9] = gray_dark,
	[10] = red,
	[11] = green,
	[12] = yellow,
	[13] = cyan,
	[14] = purple,
	[15] = cyan,
	[16] = gray_light,
}

require(vim.g.colors_name)(highlight_group_normal, highlight_groups, terminal_colors)

-- Thanks to Romain Lafourcade (https://github.com/romainl) for the original template (romainl/vim-rnb).
