for dir in io.popen([[ls -pA1 ~/.config/nvim/lua/config | grep -v / | sed 's/\.lua$//']]):lines() do
  if dir == "init" then
    goto continue
  end

  local ok, res = pcall(require, "config." .. dir)

  if not ok then
    print("Error loading config." .. dir .. ": " .. res)
  end

    ::continue::
end
