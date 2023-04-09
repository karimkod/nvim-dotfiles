

function ColorMyPencils(color, isWhiteTheme)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
  if not isWhiteTheme then
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
end


function DarkTheme()
  ColorMyPencils("catppuccin-mocha", false);
end

function WhiteTheme()
  ColorMyPencils("catppuccin-latte", true);
end

DarkTheme()


