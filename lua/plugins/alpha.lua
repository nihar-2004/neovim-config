return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		-- Set header
		dashboard.section.header.val = {
			"███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ",
			"███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ",
			"███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ ",
			"███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ ",
			"███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ ",
			"███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ ",
			"███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ ",
			" ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ",
		}
		dashboard.section.buttons.val = {
			dashboard.button("n", " > New File", "<cmd>ene<CR>"),
			dashboard.button("f", "󰱼 > Find Files", "<cmd>Telescope find_files<CR>"),
			dashboard.button("r", " > Find Recent Files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("p", " > Find Projects", "<cmd>Telescope projects<CR>"),
			dashboard.button(
				"c",
				" > Configuration",
				"<cmd>edit C:\\Users\\nihar\\AppData\\Local\\nvim\\init.lua<CR>"
			),
			dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
		}
		local function sysstats()
			local datetime = os.date(" %d/%m/%Y   %H:%M:%S")
			local plugins_text = " v"
				.. vim.version().major
				.. "."
				.. vim.version().minor
				.. "."
				.. vim.version().patch
				.. "  "
				.. datetime
			return plugins_text .. "\n"
		end
		dashboard.section.footer.val = sysstats()
		alpha.setup(dashboard.opts)
	end,
}
