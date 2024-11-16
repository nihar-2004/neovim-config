return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local function sysstats()
			local datetime = os.date(" %d/%m/%Y   %H:%M:%S")
			local stats = require("lazy").stats()
			local plugins_text = " v"
				.. vim.version().major
				.. "."
				.. vim.version().minor
				.. "."
				.. vim.version().patch
				.. "  "
				.. datetime
				.. "  ⚡"
				.. stats.count
				.. " plugins"
			return plugins_text .. "\n"
		end

		vim.api.nvim_set_hl(0, "NeovimDashboardLogo1", { fg = "#311B92" }) -- Indigo
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo2", { fg = "#512DA8" }) -- Deep Purple
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo3", { fg = "#673AB7" }) -- Deep Purple
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo4", { fg = "#9575CD" }) -- Medium Purple
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo5", { fg = "#B39DDB" }) -- Light Purple
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo6", { fg = "#D1C4E9" }) -- Very Light Purple
		vim.api.nvim_set_hl(0, "NeovimDashboardUsername", { fg = "#D1C4E9" }) -- light purple
		dashboard.section.header.type = "group"
		dashboard.section.header.val = {
			{
				type = "text",
				val = "   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
				opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
			},
			{
				type = "text",
				val = "   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
				opts = { hl = "NeovimDashboardLogo2", shrink_margin = false, position = "center" },
			},
			{
				type = "text",
				val = "   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
				opts = { hl = "NeovimDashboardLogo3", shrink_margin = false, position = "center" },
			},
			{
				type = "text",
				val = "   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
				opts = { hl = "NeovimDashboardLogo4", shrink_margin = false, position = "center" },
			},
			{
				type = "text",
				val = "   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
				opts = { hl = "NeovimDashboardLogo5", shrink_margin = false, position = "center" },
			},
			{
				type = "text",
				val = "   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
				opts = { hl = "NeovimDashboardLogo6", shrink_margin = false, position = "center" },
			},
			{
				type = "padding",
				val = 1,
			},
			{
				type = "text",
				val = sysstats(),
				opts = { hl = "NeovimDashboardUsername", shrink_margin = false, position = "center" },
			},
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
			dashboard.button("l", "󰒲 > " .. " Lazy", "<cmd> Lazy <CR>"),
			dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
		}
		alpha.setup(dashboard.opts)
	end,
}
