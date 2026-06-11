return {
  {
    "bjarneo/aether.nvim",
    name = "aether",
    priority = 1000,
    opts = {
      styles = {
        comments = {},
        keywords = {},
        functions = {},
        variables = {},
      },
      colors = {
        bg = "#004E98",
        lighter_bg = "#0A5AB8",
        selection = "#2A6FD1",
        muted = "#7DCFFF",
        dark_fg = "#C0C0C0",
        fg = "#FFFFFF",
        light_fg = "#E0E0E0",
        bright_fg = "#FFFFFF",
        dark_bg = "#003366",
        darker_bg = "#002244",
        red = "#FF6B6B",
        yellow = "#FFFF60",
        orange = "#FFA0A0",
        green = "#60FF60",
        cyan = "#40FFFF",
        blue = "#7DCFFF",
        purple = "#FF80FF",
        brown = "#7D5440",
        bright_red = "#FF8080",
        bright_yellow = "#FFFF80",
        bright_green = "#80FF80",
        bright_cyan = "#80FFFF",
        bright_blue = "#A0C4FF",
        bright_purple = "#FFAAFF",
      },
      on_highlights = function(hl, c)
        hl.Constant = { fg = "#FFA0A0" }
        hl.String = { fg = "#FFA0A0" }
        hl.Character = { fg = "#FFA0A0" }
        hl.Number = { fg = "#FFA0A0" }
        hl.Boolean = { fg = "#FFA0A0" }
        hl.Float = { fg = "#FFA0A0" }
        hl.Identifier = { fg = "#40FFFF" }
        hl.Function = { fg = "#FFFF60", bold = true }
        hl.Statement = { fg = "#FFFF60", bold = true }
        hl.Conditional = { fg = "#FFFF60", bold = true }
        hl.Repeat = { fg = "#FFFF60", bold = true }
        hl.Label = { fg = "#FFFF60" }
        hl.Operator = { fg = "#FFFFFF" }
        hl.Keyword = { fg = "#FFFF60", bold = true }
        hl.Exception = { fg = "#FFFF60" }
        hl.PreProc = { fg = "#FF80FF" }
        hl.Include = { fg = "#FF80FF" }
        hl.Define = { fg = "#FF80FF" }
        hl.Macro = { fg = "#FF80FF" }
        hl.PreCondit = { fg = "#FF80FF" }
        hl.Type = { fg = "#60FF60", bold = true }
        hl.StorageClass = { fg = "#60FF60" }
        hl.Structure = { fg = "#60FF60" }
        hl.Typedef = { fg = "#60FF60" }
        hl.Special = { fg = "#FFA0A0" }
        hl.Underlined = { underline = true }
        hl.Comment = { fg = "#7DCFFF" }
        hl.LineNr = { fg = "#C0B000" }
        hl.CursorLineNr = { fg = "#FFD700", bold = true }
        hl.Visual = { bg = "#2A6FD1" }
        hl.Search = { bg = "#FFFF60", fg = "#000000", bold = true }
        hl.IncSearch = { bg = "#FFA0A0", fg = "#000000", bold = true }
        hl.Todo = { bg = "#FFFF60", fg = "#000000", bold = true }
        hl.StatusLine = { bg = "#0A5AB8", fg = "#FFFFFF" }
        hl.StatusLineNC = { bg = "#003366", fg = "#7DCFFF" }
        hl.TabLine = { bg = "#003366", fg = "#7DCFFF" }
        hl.TabLineSel = { bg = "#FFFF60", fg = "#000000" }
        hl.MatchParen = { fg = "#FFFF60", bold = true }
        hl.CursorLine = { bg = "#0A5AB8" }
        hl.Pmenu = { bg = "#003366", fg = "#FFFFFF" }
        hl.PmenuSel = { bg = "#2A6FD1", fg = "#FFFFFF" }
        hl.Error = { fg = "#FFFFFF", bg = "#FF0000" }
        hl.ErrorMsg = { fg = "#FFFFFF", bg = "#FF0000", bold = true }
        hl.Title = { fg = "#FFFF60", bold = true }
        hl.Directory = { fg = "#7DCFFF", bold = true }
        hl.Question = { fg = "#60FF60", bold = true }
        hl.MoreMsg = { fg = "#60FF60", bold = true }
        hl.WarningMsg = { fg = "#FFFF60", bold = true }
        hl.SpecialKey = { fg = "#7DCFFF" }
        hl.NonText = { fg = "#7DCFFF" }
        hl.Whitespace = { fg = "#7DCFFF" }
        hl.VertSplit = { fg = "#7DCFFF" }
        hl.Folded = { fg = "#7DCFFF", bg = "#003366" }
        hl.FoldColumn = { fg = "#7DCFFF", bg = "#004E98" }
        hl.SignColumn = { bg = "#004E98", fg = "#7DCFFF" }
        hl.Conceal = { fg = "#7DCFFF" }
        hl.DiffAdd = { fg = "#60FF60" }
        hl.DiffChange = { fg = "#FFFF60" }
        hl.DiffDelete = { fg = "#FF6B6B" }
        hl.DiffText = { fg = "#7DCFFF" }
        hl.diffAdded = { fg = "#60FF60" }
        hl.diffRemoved = { fg = "#FF6B6B" }
        hl.diffChanged = { fg = "#FFFF60" }
      end,
    },
    init = function()
      vim.api.nvim_create_autocmd("UIEnter", {
        once = true,
        callback = function()
          vim.api.nvim_set_option_value("statuscolumn", "%s%l ", { win = 0 })
          vim.api.nvim_set_option_value("signcolumn", "auto", { win = 0 })
          vim.api.nvim_set_option_value("numberwidth", 1, { win = 0 })
        end,
      })
    end,
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
