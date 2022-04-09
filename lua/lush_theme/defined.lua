--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local dark0 = "#222226"
local dark00 = "#333337"
local dark01 = "#444448"
local dark10 = "#555559"
local dark11 = "#888892"

local light00 = "#eeeeff"
local light01 = "#ddddee"
local light10 = "#ccccdd"
local light11 = "#bbbbcc"

local red = "#dd3322"
local yellow = "#eecc00"
local orange = "#ffbb66"
local blue = "#55bbff"
local cyan = "#22aa99"
local green = "#aaff88"
local violet = "#99aaff"
local light_blue = "#aaccee"
local purple = "#dd88dd"

local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment      { fg = hsl(dark11), gui = "italic" }, -- any comment
    ColorColumn  { bg = hsl(dark01) }, -- used for the columns set with 'colorcolumn'
    Conceal      { fg = hsl(light10) }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { fg = hsl(dark00), bg = hsl(light01) }, -- character under the cursor
    lCursor      { Cursor }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { Cursor }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = hsl(dark01) }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { CursorColumn }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = hsl(blue) }, -- directory names (and other special names in listings)
    DiffAdd      { fg = hsl(dark00), bg = hsl(green) }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = hsl(dark00), bg = hsl(orange) }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = hsl(light01), bg = hsl(red) }, -- diff mode: Deleted line |diff.txt|
    DiffText     { fg = hsl(dark00), bg = hsl(yellow) }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg = hsl(dark11) }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { Cursor }, -- cursor in a focused terminal
    TermCursorNC { Cursor }, -- cursor in an unfocused terminal
    ErrorMsg     { DiffDelete }, -- error messages on the command line
    VertSplit    { Comment }, -- the column separating vertically split windows
    Folded       { CursorColumn }, -- line used for closed folds
    FoldColumn   { bg = hsl(dark01) }, -- 'foldcolumn'
    SignColumn   { bg = hsl(dark00) }, -- column where |signs| are displayed
    IncSearch    { bg = hsl(dark01) }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { IncSearch }, -- |:substitute| replacement text highlighting
    LineNr       { fg = hsl(light11), bg = hsl(dark00) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = hsl(light00), bg = hsl(dark00) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = hsl(dark10) }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = hsl(light10) }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { ModeMsg }, -- Area for messages and cmdline
    MsgSeparator { ModeMsg }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { ModeMsg }, -- |more-prompt|
    NonText      { EndOfBuffer }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = hsl(light00), bg = hsl(dark0) }, -- normal text
    NormalFloat  { fg = hsl(light11), bg = hsl(dark0) }, -- Normal text in floating windows.
    NormalNC     { NormalFloat }, -- normal text in non-current windows
    Pmenu        { fg = hsl(light00), bg = hsl(dark01) }, -- Popup menu: normal item.
    PmenuSel     { fg = hsl(light00), bg = hsl(dark10) }, -- Popup menu: selected item.
    PmenuSbar    { fg = hsl(light01), bg = hsl(dark01) }, -- Popup menu: scrollbar.
    PmenuThumb   { fg = hsl(light00) }, -- Popup menu: Thumb of the scrollbar.
    Question     { fg = hsl(green) }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { NormalNC }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { IncSearch }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   { NonText }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { gui = "underline" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { SpellBad }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { fg = hsl(light10) }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { SpellLocal }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { bg = hsl(dark01) }, -- status line of current window
    StatusLineNC { bg = hsl(dark10) }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = hsl(dark00) }, -- tab pages line, not active tab page label
    TabLineFill  { bg = hsl(dark00) }, -- tab pages line, where there are no labels
    TabLineSel   { bg = hsl(dark10) }, -- tab pages line, active tab page label
    Title        { fg = hsl(purple) }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = hsl(dark10) }, -- Visual mode selection
    VisualNOS    { bg = hsl(dark01) }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { DiffText }, -- warning messages
    Whitespace   { fg = hsl(dark11) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { bg = hsl(dark10) }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = hsl(blue) }, -- (preferred) any constant
    String         { fg = hsl(green) }, --   a string constant: "this is a string"
    Character      { String }, --  a character constant: 'c', '\n'
    Number         { Constant }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { Constant }, --    a floating point constant: 2.3e10

    Identifier     { fg = hsl(light01) }, -- (preferred) any variable name
    Function       { fg = hsl(orange) }, -- function name (also: methods for classes)

    Statement      { fg = hsl(violet) }, -- (preferred) any statement
    Conditional    { Statement }, --  if, then, else, endif, switch, etc.
    Repeat         { Statement }, --   for, do, while, etc.
    Label          { Statement }, --    case, default, etc.
    Operator       { Identifier }, -- "sizeof", "+", "*", etc.
    Keyword        { Statement }, --  any other keyword
    Exception      { Statement }, --  try, catch, throw

    PreProc        { fg = hsl(purple) }, -- (preferred) generic Preprocessor
    Include        { PreProc }, --  preprocessor #include
    Define         { PreProc }, --   preprocessor #define
    Macro          { PreProc }, --    same as Define
    PreCondit      { PreProc }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = hsl(light_blue) }, -- (preferred) int, long, char, etc.
    StorageClass   { Type }, -- static, register, volatile, etc.
    Structure      { Type }, --  struct, union, enum, etc.
    Typedef        { Type }, --  A typedef

    Special        { fg = hsl(green) }, -- (preferred) any special symbol
    SpecialChar    { Special }, --  special character in a constant
    Tag            { fg = hsl(yellow) }, --    you can use CTRL-] on this
    -- Delimiter      { bg = hsl("#88dd88") }, --  character that needs attention
    SpecialComment { fg = hsl(green) }, -- special things inside a comment
    Debug          { fg = hsl(purple) }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg = hsl(red) }, -- (preferred) any erroneous construct

    Todo           { fg = hsl(light10) }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    DiagnosticError           { fg = hsl(red), bg = hsl(dark00) }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticWarning         { fg = hsl(orange), bg = hsl(dark00) }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticInfo     { fg = hsl(light10), bg = hsl(dark00) }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticHint            { fg = hsl(yellow), bg = hsl(dark00) }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       { fg = hsl(red) }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     { fg = hsl(orange) }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation { fg = hsl(light10) }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint        { fg = hsl(yellow) }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { Constant };    -- For booleans.
    -- TSCharacter          { Character };    -- For characters.
    -- TSComment            { Comment };    -- For comment blocks.
    -- TSConstructor        { Function };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { Keyword };    -- For keywords related to conditionnals.
    -- TSConstant           { Constant };    -- For constants
    -- TSConstBuiltin       { Constant };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { Constant };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { Error };    -- For syntax/parser errors.
    -- TSException          { Keyword };    -- For exception related keywords.
    -- TSField              { Identifier };    -- For fields.
    -- TSFloat              { Number };    -- For floats.
    -- TSFunction           { Function };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { Function };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { Function };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { Include };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { Keyword };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { Keyword };    -- For keywords used to define a fuction.
    -- TSLabel              { Identifier };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { Function };    -- For method calls and definitions.
    -- TSNamespace          { Identifier };    -- For identifiers referring to modules and namespaces.
    -- -- TSNone               { };    -- TODO: docs
    -- TSNumber             { Number };    -- For all numbers
    -- TSOperator           { Operator };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { Identifier };    -- For parameters of a function.
    -- TSParameterReference { Identifier };    -- For references to parameters of a function.
    -- -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { Identifier };    -- For delimiters ie: `.`
    -- TSPunctBracket       { Identifier };    -- For brackets and parens.
    -- TSPunctSpecial       { Identifier };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { Keyword };    -- For keywords related to loops.
    -- TSString             { String };    -- For strings.
    -- TSStringRegex        { String };    -- For regexes.
    -- TSStringEscape       { Identifier };    -- For escape characters within a string.
    -- TSSymbol             { Identifier };    -- For identifiers referring to symbols or atoms.
    -- TSType               { Type };    -- For types.
    -- TSTypeBuiltin        { Type };    -- For builtin types.
    -- TSVariable           { Identifier };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { Identifier };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { Keyword };    -- Tags like html tag names.
    -- TSTagDelimiter       { Identifier };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { Identifier };    -- For strings considered text in a markup language.
    -- TSEmphasis           { gui = "bold" };    -- For text to be represented with emphasis.
    -- TSUnderline          { gui = "underline" };    -- For text to be represented with an underline.
    -- TSStrike             { gui = "strikethrough" };    -- For strikethrough text.
    -- TSTitle              { Title };    -- Text that is part of a title.
    -- TSLiteral            { Normal };    -- Literal text.
    -- TSURI                { Todo, gui = "underline" };    -- Any URI like a link or email.
    --
    -- Misc
    MinimapCurrentLine { fg = hsl(green) }, -- wfxr/minimap.vim
    GitSignsAdd { bg = hsl(dark00), fg = hsl(green) },    -- lewis6991/gitsigns.nvim
    GitSignsChange { bg = hsl(dark00), fg = hsl(yellow) },    -- lewis6991/gitsigns.nvim
    GitSignsDelete { bg = hsl(dark00), fg = hsl(red) },    -- lewis6991/gitsigns.nvim
    -- PyGamer0/rainbow_parentheses.vim
    rainbowParensShell8 { fg = hsl(yellow) },
    rainbowParensShell7 { fg = hsl(purple) },
    rainbowParensShell6 { fg = hsl(blue) },
    rainbowParensShell5 { fg = hsl(light_blue) },
    rainbowParensShell4 { fg = hsl(cyan) },
    rainbowParensShell3 { fg = hsl(green) },
    rainbowParensShell2 { fg = hsl(orange) },
    rainbowParensShell1 { fg = hsl(violet) },
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
