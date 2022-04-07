require('Spoons/hello')
require "Spoons/window-management" -- 窗口管理
require "Spoons/clipboard" -- 丰富粘贴板
require "Spoons/weather" -- 天气 todo


-- 配置文件保存失效
function reloadConfig(files)
  local doReload = false
  for _,file in pairs(files) do
    if file:sub(-4) == ".lua" then
      doReload = true
    end
  end
  if doReload then
    hs.reload()
    hs.alert.show('Config Reloaded')
  end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

-- Well, sometimes auto-reload is not working, you know u.u
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "n", function()
  hs.reload()
end)
hs.alert.show("Config loaded")
