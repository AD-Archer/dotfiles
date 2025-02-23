-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "tundra",


	hl_override = {
    Pmenu = { bg={"black",-9} , fg="white"},
    PmenuSel = { bg={"black",0}, fg="white" },
    PmenuThumb = { bg={"black",-9} , fg="white"},
    PmenuSbar = { bg={"black",-9} , fg="white"},
    CmpPmenu= { bg={"black",-9} , fg="white"},
    Normal = { bg={"black",-9} , fg="white"},
    NvimTreeNormal = { bg={"black",-9},fg="white" },
    NvimTreeNormalNC = { bg={"black",-9},fg="white" },
    NvimTreeFolderName = { bg={"black",-9},fg="white" },
    NvimTreeRootFolder = { bg={"black",-9},fg="white" },
    NvimTreeWinSeparator= { bg={"black",-9},fg="black" },
    TelescopeNormal = { bg={"black",-9},fg="white"},
    TelescopeBorder = { bg={"black",-9},fg="white" },
    TelescopeSelection = { bg={"black",0},fg="white" },
    TelescopePromptTitle = { bg={"black",-9},fg="white" },
    TelescopePreviewTitle = { bg={"black",-9}, fg="white"},
    TelescopePromptBorder = { bg={"black",-9}, fg="white"},
    TelescopePromptNormal = { bg={"black",-9},fg="white" },
    TelescopePromptPrefix = { bg={"black",-9},fg="white"},
    St_file_sep = {bg="none",},
    St_gitIcons = {bg="none",},
    TblineFill = { bg={"black",-9},fg="white"},
    TbLineBufOn = { bg={"black",-9},fg="white"},
    TbLineTabOn = { bg={"black",-9},fg="white"},
    TbLineBufOff = { bg={"black",-9},fg="white"},
    TbLineTabOff = { bg={"black",-9},fg="white"},
    TblineTabNewBtn = { bg={"black",-9},fg="white"},
    TbLineBufOnClose = { bg={"black",-9},fg="white"},
    TbLineBufOffClose = { bg={"black",-9},fg="white"},
    TbLineTabCloseBtn = { bg={"black",-9},fg="white"},
    TbLineBufOnModified = { bg={"black",-9},fg="white"},
    TbaLineBufOffModified = { bg={"black",-9},fg="white"},
    TbLineThemeToggleBtn = { bg={"black",-9},fg="white"},
    TBTabTitle = { bg={"black",-9},fg="white"},
    TbLineBufOffModified = { bg={"black",-9},fg="white"},
    TbLineCloseAllBufsBtn = { bg={"black",-9},fg="white"},
},
  statusline={
    separator_style="round",
    theme="minimal",
  },
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
