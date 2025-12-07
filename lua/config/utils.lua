local M = {}

local function find_existing_terminal()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        local bufnr = vim.api.nvim_win_get_buf(win)

        if vim.bo[bufnr].buftype == 'terminal' then
            return win
        end
    end
    return nil
end

local function execute_command(bufnr, command)
    vim.schedule(function()
        local channel_id = vim.api.nvim_buf_get_var(bufnr, 'terminal_job_id')

        if channel_id then
            local command_with_cr = command .. "\r"

            vim.api.nvim_chan_send(channel_id, "clear\r")

            vim.api.nvim_chan_send(channel_id, command_with_cr)

            -- Switch back to the previous window (the code buffer)
            -- vim.cmd("wincmd p")

            vim.cmd("normal! i")
        else
            vim.notify("Error: Terminal job ID not found. Could not execute command.", vim.log.levels.ERROR)
        end
    end)
end

M.run_in_terminal = function(command)
    local term_win = find_existing_terminal()
    local bufnr

    if term_win then
        vim.api.nvim_set_current_win(term_win)
        bufnr = vim.api.nvim_win_get_buf(term_win)

        execute_command(bufnr, command)
    else
        vim.cmd("botright split | terminal")
        bufnr = vim.api.nvim_get_current_buf()

        local timer = vim.loop.new_timer()
        timer:start(10, 0, function()
            execute_command(bufnr, command)

            timer:stop()
            timer:close()
        end)
    end
end

vim.api.nvim_create_user_command('CRun', function(opts)
    M.run_in_terminal(opts.args)
end, {
    nargs = 1,
    desc = "Open terminal and execute build/run command for CP"
})

return M
