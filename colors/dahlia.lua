--[[ Highlite, a Neovim colorscheme template.
	* Author:     theRhasoldy (https://github.com/theRhasoldy)
	* Repository: https://github.com/nvim-highlite

	Initially forked from vim-rnb, a Vim colorsheme template:
	* Author:        Romain Lafourcade (https://github.com/romainl)
	* Canonical URL: https://github.com/romainl/vim-rnb
]]

vim.g.colors_name = "dahlia"

local black = { "#0F1115", 235, "black" }
local gray_darker = { "#36383c", 239, "darkergray" }
local gray_dark = { "#414347", 236, "darkgrey" }
local gray = { "#707276", 244, "gray" }
local gray_light = { "#c0c2c6", 250, "lightgray" }
local white = { "#eeeeee", 231, "white" }

local cursor_line = { "#222024", 232, "cursorline" }

local red_dark = { "#fa235d", 124, "darkred" }
local red = { "#dd4e6d", 203, "red" }

local tan = { "#E59875", 221, "tan" }
local yellow = { "#fbb45e", 227, "yellow" }
local orange = { "#F38337", 208, "orange" }

local green_dark = { "#028044", 113, "darkgreen" }
local green = { "#4DCB8F", 46, "green" }

local turqoise = { "#3DC3AD", 48, "turqoise" }

local blue = { "#2b9cc1", 63, "darkblue" }
local cyan = { "#33dbc3", 80, "cyan" }
local ice = { "#95c5ff", 111, "ice" }
local teal = { "#60afff", 75, "teal" }

local pink = { "#fbaeb9", 217, "lightpink" }
local magenta = { "#da7893", 168, "magenta" }
local magenta_dark = { "#b14f6a", 126, "darkmagenta" }
local purple = { "#c77cd1", 171, "purple" }
local purple_light = { "#af60af", 133, "lightpurple" }

local highlight_group_normal = { fg = gray_light }

local highlight_groups = {

	-- Text Analysis
	Normal = { fg = white },
	Comment = { fg = gray, style = "italic" },
	NonText = { fg = gray_darker },
	EndOfBuffer = "NonText",
	Whitespace = "NonText",
	String = { fg = purple },

	-- Literals
	Constant = { fg = magenta },
	TSString = { fg = purple },
	Character = { fg = pink },
	Number = { fg = pink },
	Boolean = { fg = magenta, style = "italic" },
	Float = "Number",

	--[[ 4.1.2. Identifiers]]
	Identifier = { fg = turqoise },
	Function = { fg = red },
	Class = { fg = purple, style = "italic" },

	--[[ 4.1.3. Syntax]]
	Statement = { fg = ice },
	Conditional = { fg = blue, style = "italic" },
	Repeat = { fg = turqoise, style = "italic" },
	Label = { fg = pink, style = "bold" },
	Operator = { fg = gray_light },
	Keyword = { fg = blue },
	Exception = { fg = pink, style = "bold" },
	Noise = "Delimiter",
	Variable = { fg = magenta },
	VariableItalic = { fg = magenta, style = "italic" },
	Field = { fg = red },

	--[[ 4.1.4. Metatextual Information]]
	PreProc = { fg = tan },
	Include = { fg = green, style = "nocombine" },
	Define = { fg = red, style = "italic" },
	Macro = { fg = blue, style = "italic" },
	Unit = { fg = pink },
	PreCondit = { fg = tan, style = "italic" },

	--[[ 4.1.5. Semantics]]
	Type = { fg = purple },
	StorageClass = { fg = orange, style = "bold" },
	Structure = { fg = blue, style = "bold" },
	Typedef = { fg = cyan, style = "italic" },

	--[[ 4.1.6. Edge Cases]]
	Special = { fg = blue, style = "bold" },
	SpecialItalic = { fg = blue, style = "italic" },
	Snippet = { fg = blue },
	SpecialChar = { fg = orange, style = "italic" },
	SpecialKey = "Character",
	Tag = { fg = red, style = "italic" },
	Delimiter = { fg = red },
	PunctDelimiter = { fg = turqoise },
	SpecialComment = { fg = gray, style = { "bold", "nocombine" } },
	Debug = "WarningMsg",

	--[[ 4.1.7. Help Syntax]]
	Underlined = { fg = white, style = "underline", "bold" },
	Ignore = { fg = gray },
	Error = { fg = red_dark, style = "bold" },
	Todo = { fg = yellow, style = "bold" },
	Hint = { fg = magenta, style = "bold" },
	Info = { fg = pink, style = "bold" },
	Warning = { fg = yellow, style = "bold" },

	--[[ 4.2... Editor UI  ]]
	--[[ 4.2.1. Status Line]]
	StatusLine = { fg = green, bg = gray_darker },
	StatusLineNC = function(self)
		return { fg = gray, bg = self.StatusLine.bg }
	end,
	StatusLineTerm = "StatusLine",
	StatusLineTermNC = "StatusLineNC",

	--[[ 4.2.2. Separators]]
	FloatBorder = { fg = gray_darker },
	TabLine = function(self)
		return { fg = highlight_group_normal.fg, bg = self.StatusLine.bg }
	end,
	TabLineFill = function(self)
		return { fg = self.TabLine.bg, bg = black }
	end,
	TabLineSel = function(self)
		return { fg = self.TabLine.fg, bg = highlight_group_normal.bg }
	end,
	Title = { style = "bold" },
	VertSplit = { fg = cursor_line },
	Border = { fg = gray_darker },
	BorderBG = { fg = gray_darker },

	--[[ 4.2.3. Conditional Line Highlighting]]
	Conceal = "NonText",
	CursorLine = { bg = cursor_line },
	CursorLineNr = function(self)
		return { fg = gray, bg = self.LineNr.bg, style = "bold" }
	end,
	debugBreakpoint = "ErrorMsg",
	debugPC = "ColorColumn",
	LineNr = { fg = gray_dark },
	QuickFixLine = function(self)
		return { bg = self.StatusLine.bg }
	end,
	Visual = { bg = gray_dark },
	VisualNOS = { bg = gray_darker },

	--[[ 4.2.4. Popup Menu]]
	Pmenu = { fg = white, bg = nil },
	PmenuSbar = { bg = nil },
	PmenuSel = { bg = cursor_line },
	PmenuThumb = { bg = gray_dark },
	WildMenu = "PmenuSel",

	--[[ 4.2.5. Folds]]
	FoldColumn = { bg = gray_darker, style = "bold" },
	Folded = { fg = black, bg = purple_light, style = "italic" },

	--[[ 4.2.6. Diffs]]
	DiffAdd = { fg = black, bg = green_dark },
	DiffChange = {},
	DiffDelete = function(self)
		return { fg = self.DiffAdd.fg, bg = red }
	end,
	DiffText = function(self)
		return { fg = self.DiffAdd.fg, bg = yellow }
	end,

	--[[ 4.2.7. Searching]]
	IncSearch = { style = "inverse" },
	MatchParen = { fg = green, style = { "bold", "underline" } },
	Search = { style = { "underline", color = white } },

	--[[ 4.2.8. Spelling]]
	SpellBad = { style = { "undercurl", color = red } },
	SpellCap = { style = { "undercurl", color = yellow } },
	SpellLocal = { style = { "undercurl", color = green } },
	SpellRare = { style = { "undercurl", color = orange } },

	--[[ 4.2.9. Conditional Column Highlighting]]
	ColorColumn = { style = "inverse" },
	SignColumn = {},

	--[[ 4.2.10. Messages]]
	ErrorMsg = { fg = red, style = "bold" },
	HintMsg = { fg = magenta, style = "italic" },
	InfoMsg = { fg = pink, style = "italic" },
	ModeMsg = { fg = yellow },
	WarningMsg = { fg = orange, style = "bold" },
	Question = { fg = orange, style = "underline" },

	--[[ 4.2.11. LSP / Diagnostics ]]
	DiagnosticError = "Error",
	DiagnosticFloatingError = "ErrorMsg",
	DiagnosticSignError = "DiagnosticFloatingError",

	DiagnosticWarn = "Warning",
	DiagnosticFloatingWarn = "WarningMsg",
	DiagnosticSignWarn = "DiagnosticFloatingWarn",

	DiagnosticHint = "Hint",
	DiagnosticFloatingHint = "HintMsg",
	DiagnosticSignHint = "DiagnosticFloatingHint",

	DiagnosticInfo = "Info",
	DiagnosticFloatingInfo = "InfoMsg",
	DiagnosticSignInfo = "DiagnosticFloatingInfo",

	DiagnosticUnderlineError = {},
	DiagnosticUnderlineHint = {},
	DiagnosticUnderlineInfo = {},
	DiagnosticUnderlineWarn = {},

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

	--[[ 4.2.12. Cursor ]]
	Cursor = { style = "inverse" },
	CursorIM = "Cursor",
	CursorColumn = { bg = gray_dark },

	--[[ 4.2.13. Misc ]]
	Directory = { fg = gray },
	DirectoryIcon = { fg = gray_dark },
	Marker = { fg = gray_light },
	File = { fg = magenta },
	Image = { fg = green },

	--[[ 4.3. Programming Languages ]]

	TSVariable = "Variable",
	TSConstant = "Include",
	TSConstBuiltIn = "Include",
	TSFunction = "Function",
	TSField = "Field",
	TSParameter = "Special",
	TSProperty = "Special",
	TSkeyword = "Special",
	TSkeywordReturn = "Exception",

	--[[ 4.3.4. CSS ]]
	cssTSProperty = "Function",
	cssTSType = "Variable",
	cssTSKeyword = "Special",
	cssTSPunctDelimeter = "PunctDelimiter",
	scssTSProperty = "Function",
	scssTSType = "VariableItalic",
	scssTSVariable = "Variable",
	scssTSAmpersand = "Special",
	scssTSKeyword = "Special",
	scssTSPunctDelimeter = "PunctDelimiter",

	-- Dart
	dartTSType = "Variable",
	dartTSProperty = "Identifier",
	dartTSKeyword = "SpecialItalic",

	--]]

	--[[ 4.3.34. Git ]]
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

	--[[ 4.3.35. Vimtex ]]
	texMathRegion = "Number",
	texMathSub = "Number",
	texMathSuper = "Number",
	texMathRegionX = "Number",
	texMathRegionXX = "Number",

	--[[ 4.3.37 Help ]]
	helpHeader = "Label",
	helpOption = "Keyword",
	helpHeadline = "Title",
	helpSectionDelim = "Delimiter",
	helpHyperTextJump = "Underlined",

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
	GitGutterAdd = { fg = green },
	GitGutterChange = { fg = yellow },
	GitGutterDelete = { fg = red },
	GitGutterChangeDelete = { fg = orange },

	SignifySignAdd = "GitGutterAdd",
	SignifySignChange = "GitGutterChange",
	SignifySignDelete = "GitGutterDelete",
	SignifySignChangeDelete = "GitGutterChangeDelete",

	GitSignsAdd = "GitGutterAdd",
	GitSignsChange = "GitGutterChange",
	GitSignsDelete = "GitGutterDelete",

	--[[ 4.4.8. nvim-treesitter ]]
	TSConstBuiltin = "TSConstant",
	TSConstructor = "TSFunction",
	TSDanger = "ErrorMsg",
	TSFuncBuiltin = "TSFunction",
	TSTag = "Tag",
	TSWarning = "WarningMsg",

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

	--[[ 4.4.16. nvim-cmp ]]
	CmpItemAbbrDefault = "Operator",
	CmpItemAbbrMatchDefault = "Underlined",
	CmpItemAbbrMatchFuzzyDefault = { fg = highlight_group_normal.fg, style = { "nocombine", "underline" } },
	CmpItemKindClassDefault = "CmpItemKindStructDefault",
	CmpItemKindColorDefault = "Label",
	CmpItemKindConstantDefault = "Constant",
	CmpItemKindConstructorDefault = "CmpItemKindMethodDefault",
	CmpItemKindDefault = "Type",
	CmpItemKindEnumDefault = "CmpItemKindStructDefault",
	CmpItemKindEnumMemberDefault = "CmpItemKindConstantDefault",
	CmpItemKindEventDefault = "Repeat",
	CmpItemKindFieldDefault = "Field",
	CmpItemKindFileDefault = "File",
	CmpItemKindFolderDefault = "CmpItemKindFileDefault",
	CmpItemKindFunctionDefault = "Function",
	CmpItemKindInterfaceDefault = "Type",
	CmpItemKindKeywordDefault = "Keyword",
	CmpItemKindMethodDefault = "CmpItemKindFunctionDefault",
	CmpItemKindModuleDefault = "Include",
	CmpItemKindOperatorDefault = "Operator",
	CmpItemKindPropertyDefault = "CmpItemKindFieldDefault",
	CmpItemKindReferenceDefault = "StorageClass",
	CmpItemKindSnippetDefault = "Include",
	CmpItemKindStructDefault = "Structure",
	CmpItemKindTextDefault = "String",
	CmpItemKindTypeParameterDefault = "Typedef",
	CmpItemKindUnitDefault = "CmpItemKindStructDefault",
	CmpItemKindValueDefault = "CmpItemKindConstantDefault",
	CmpItemKindVariableDefault = "Variable",

	--[[ 4.4.17. packer.nvim ]]
	packerFail = "ErrorMsg",
	packerHash = "Number",
	packerPackageNotLoaded = "Ignore",
	packerStatusFail = "Statement",
	packerStatusSuccess = "packerStatusFail",
	packerSuccess = function(self)
		return { fg = green, style = self.packerFail.style }
	end,

	--[[ 4.4.18. nvim-tree ]]
	NvimTreeNormal = "File",
	NvimTreeSpecialFile = "Special",
	NvimTreeRootFolder = "Marker",
	NvimTreeFolderIcon = "DirectoryIcon",
	NvimTreeIndentMarker = "Marker",
	NvimTreeImageFile = "Image",
	NvimTreeGitDeleted = function(self)
		return { fg = self.DiffDelete.bg }
	end,
	NvimTreeGitDirty = { fg = orange },
	NvimTreeGitIgnored = "Ignore",
	NvimTreeGitMerge = "NvimTreeGitRenamed",
	NvimTreeGitNew = function(self)
		return { fg = self.DiffAdd.bg }
	end,
	NvimTreeGitRenamed = function(self)
		return { fg = self.DiffChange.bg }
	end,
	NvimTreeGitStaged = { fg = cyan },

	-- Telescope
	TelescopeBorder = "Border",
	TelescopeTitle = "Marker",
	TelescopeSelection = "CursorLine",

	-- Hop
	HopNextKey = { fg = magenta },
	HopNextKey1 = { fg = magenta },
	HopNextKey2 = { fg = magenta_dark },
	HopUnmatched = { fg = gray },
}

local terminal_colors = {
	[1] = black,
	[2] = red_dark,
	[3] = green_dark,
	[4] = orange,
	[5] = blue,
	[6] = magenta_dark,
	[7] = teal,
	[8] = gray,
	[9] = gray_dark,
	[10] = red,
	[11] = green,
	[12] = yellow,
	[13] = turqoise,
	[14] = purple,
	[15] = cyan,
	[16] = gray_light,
}

require(vim.g.colors_name)(highlight_group_normal, highlight_groups, terminal_colors)

-- Thanks to Romain Lafourcade (https://github.com/romainl) for the original template (romainl/vim-rnb).
