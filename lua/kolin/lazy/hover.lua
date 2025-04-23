return {
    "lewis6991/hover.nvim",

    config = function()
        require("hover").setup {
            -- ping
            init = function()
                -- Require providers
                require("hover.providers.lsp")
                -- require('hover.providers.gh')
                -- require('hover.providers.gh_user')
                -- require('hover.providers.jira')
                -- require('hover.providers.dap')
                -- require('hover.providers.fold_preview')
                require('hover.providers.diagnostic')
                -- require('hover.providers.man')
                -- require('hover.providers.dictionary')
                -- require('hover.providers.highlight')
            end,
            preview_opts = {
                border = 'rounded'
            },
            -- Whether the contents of a currently open hover window should be moved
            -- to a :h preview-window when pressing the hover keymap.
            preview_window = false,
            title = true,
            providers = {
                'LSP',
            },

            -- Intercept the LSP hover response
            post_process = function(buffer)
                local lines = vim.api.nvim_buf_get_lines(buffer, 0, -1, false)
                local unescaped_lines = vim.tbl_map(function(line)
                    -- Replace common escaped markdown characters
                    return line
                    -- :gsub("\\([\\*_`])", "%1")  -- unescape \\, \*, \_, \`
                    -- :gsub("\\([%[%]()])", "%1") -- unescape \[ \] \( \)
                    :gsub("ping", "pong")
                end, lines)
                vim.api.nvim_buf_set_lines(buffer, 0, -1, false, unescaped_lines)
            end
        }

        -- Setup keymaps
        vim.keymap.set("n", "K", function()
            require("hover").hover()


        end, {desc = "hover.nvim"})
        vim.keymap.set("n", "<C-h>", function() require("hover").hover_switch("previous") end, {desc = "hover.nvim (previous source)"})
        vim.keymap.set("n", "<C-l>", function() require("hover").hover_switch("next") end, {desc = "hover.nvim (next source)"})
    end
}
