local M = {}

local function run_module(name)
  return function(...)
    require(name)(...)
  end
end

M.files = run_module("fzf-commands.files")
M.grep = run_module("fzf-commands.grep")
M.helptags = run_module("fzf-commands.helptags")
M.bufferpicker = run_module("fzf-commands.bufferpicker")

return M
