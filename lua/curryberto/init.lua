require("curryberto.remap")
require("curryberto.set")

print(
	"Config:\n"
		.. "Fugitive...........Git\n"
		.. "Catppuccin.........Colors\n"
		.. "Packer.............Package Manager\n"
		.. "Telescope..........Fuzzy Finder\n"
		.. "Tree-sitter........Code Parsing\n"
		.. "Harpoon............Quick File Navigation\n"
		.. "Undotree...........Traverse Undo History\n"
		.. "LSP-zero...........Language Server Protocol\n"
		.. "Vim-Autoread.......Autoreload Modified Files\n"
        .. "Nvim-DAP...........Debugger\n"
        .. "Nvim-DAP-UI........Debugger UI\n"
        .. "Mason..............DAP/LSP/Etc Package Manager\n"
)
print("  \n")
print(
	"Installation:\n"
		.. "1. Install packer (see github)\n"
		.. "2. Open packer.lua file using nvim --noplugin\n"
		.. "3. Run :so and then :PackerInstall :PackerSync\n"
		.. "4. Restart nvim\n"
)
print("  \n")
print(
	"FAQ:\n"
		.. "Q. <leader>ps isn't working (I can't search) \n"
        .. "A. Install ripgrep\n"
        .. " \n"
        .. "Q. I can't copy or paste from system clipboard (\"+y \"+p \"*y \"*p don't work.) \n"
        .. "A. Install Xclip (and maybe gvim) \n"
)
print("  \n")

function Hotkeys()
	print(
		"---------------------------------\n"
			.. "Commonly Forgotten:\n"
			.. "Clear Highlighting - :noh\n"
			.. "Close/Toggle Intellisense - <C-e>\n"
			.. "Previous Location - <C-o>\n"
			.. "Next Location - <C-i>\n"
			.. "Goto Definition - <gd>\n"
			.. "Command During Edit - <C-o>[command]\n"
			.. "Sync Packer - :PackerSync\n"
			.. "Undo Tree - :UndotreeToggle\n"
			.. "Goto File Dir - < pv>\n"
			.. "View Git Files - <C-p>\n"
			.. "---------------------------------"
	)

	print(
		"VIM basics:\n"
			.. "New Line - <o> or <O> in n\n"
			.. "Goto Top - <gg> in n\n"
			.. "Goto Bottom - <G> in n\n"
			.. "Redo - <C-r>\n"
			.. "---------------------------------"
	)

	print(
		"Harpoon:\n"
			.. "Add File to Speed Dial: < a>\n"
			.. "Manage Speed Dial: <C-e>\n"
			.. "Next File: <C-t>\n"
			.. "---------------------------------"
	)

	print("LSP:\n" .. "Get Doc File: <C-h>\n" .. "---------------------------------")
end

function ConfigNotes()
	print(
		"On windows you need to rebind paste in terminal otherwise"
			.. "you cannot access visual block mode. With terminal open"
			.. "push ctrl+shift+, to open settings.json for terminal."
			.. "remap paste to ctrl+shift+v."
	)
	print(
		"On windows you need to install gcc for lsp-zero to "
			.. "work. use 'choco install mingw' in powershell to install."
	)
end

function Stylua()
	os.execute("stylua " .. vim.fn.expand("%:p"))
end
