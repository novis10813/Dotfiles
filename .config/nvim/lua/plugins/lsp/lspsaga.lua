local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
    return
end
saga.setup({
    preview = {
        lines_above = 0,
        lines_below = 10,
    },
    scroll_preview = {
        scroll_down = "<C-f>",
        scoll_up = "<C-b>",
    },
    request_timeout = 2000,
    ui = {
        -- This option only works in Neovim 0.9
        title = true,
        -- Border type can be single, double, rounded, solid, shadow.
        border = "rounded",
        winblend = 0,
        expand = "",
        collapse = "",
        code_action = "󱧡",
        incoming = " ",
        outgoing = " ",
        hover = " ",
        kind = {
            require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
        },
    },
    finder = {
        max_height = 0.5,
        min_width = 30,
        force_max_height = false,
        keys = {
            jump_to = "p",
            expand_or_jump = "o",
            vsplit = "s",
            split = "i",
            tabe = "t",
            tabnew = "r",
            quit = { "q", "<ESC>" },
            close_in_preview = "<ESC>",
        },
    },
    definition = {
        edit = "<C-c>o",
        vsplit = "<C-c>v",
        split = "<C-c>i",
        tabe = "<C-c>t",
        quit = "q",
    },
    code_action = {
        num_shortcut = true,
        show_server_name = false,
        extend_gitsigns = true,
        keys = {
            -- string | table type
            quit = "q",
            exec = "<CR>",
        },
    },
    hover = {
        max_width = 0.6,
        open_link = "gx",
        open_browser = "!chrome",
    },
    diagnostic = {
        on_insert = false,
        on_insert_follow = false,
        insert_winblend = 0,
        show_code_action = true,
        show_source = true,
        jump_num_shortcut = true,
        max_width = 0.7,
        max_height = 0.6,
        max_show_width = 0.9,
        max_show_height = 0.6,
        text_hl_follow = true,
        border_follow = true,
        extend_relatedInformation = false,
        keys = {
            exec_action = "o",
            quit = "q",
            expand_or_jump = "<CR>",
            quit_in_show = { "q", "<ESC>" },
        },
    },
    rename = {
        quit = "<C-c>",
        exec = "<CR>",
        mark = "x",
        confirm = "<CR>",
        in_select = true,
    },
})
