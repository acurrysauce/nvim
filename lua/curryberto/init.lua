require("curryberto.remap")
require("curryberto.set")

print(
"Curryberto Config:\n"..
"Fugitive - Git\n"..
"Catppuccin - Colors\n"..
"Packer - Package Manager\n"..
"Telescope - Fuzzy Finder\n"..
"Tree-sitter - Code Parsing\n"..
"Harpoon - Quick File Navigation\n"..
"Undotree - Traverse Undo History\n"..
"LSP-zero: - Language Server Protocol\n"
)


function Hotkeys()
		print(
		"---------------------------------\n"..
		"Commonly Forgotten:\n"..
		"Close/Toggle Intellisense - <C-e>\n"..
		"Previous Location - <C-o>\n"..
		"Next Location - <C-i>\n"..
		"Goto Definition - <gd>\n"..
		"Command During Edit - <C-o>[command]\n"..
		"Sync Packer - :PackerSync\n"..
		"Undo Tree - :UndotreeToggle\n"..
		"Goto File Dir - < pv>\n"..
		"View Git Files - <C-p>\n"..
		"---------------------------------"
		)

		print(
		"VIM basics:\n"..
		"New Line - <o> or <O> in n\n"..
		"Goto Top - <gg> in n\n"..
		"Goto Bottom - <G> in n\n"..
		"Redo - <C-r>\n"..
		"---------------------------------"
		)

		print(
		"Harpoon:\n"..
		"Add File to Speed Dial: < a>\n"..
		"Manage Speed Dial: <C-e>\n"..
		"Next File: <C-t>\n"..
		"---------------------------------"
		)

		print(
		"LSP:\n"..
		"Get Doc File: <C-h>\n"..
		"---------------------------------"
		)
end

function ConfigNotes()
		print(
		"On windows you need to rebind paste in terminal otherwise"..
		"you cannot access visual block mode. With terminal open"..
		"push ctrl+shift+, to open settings.json for terminal."..
		"remap paste to ctrl+shift+v."
		)
		print(
		"On windows you need to install gcc for lsp-zero to "..
		"work. use 'choco install mingw' in powershell to install."
		)
end
