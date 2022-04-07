require('Spoons/hello')
require "Spoons/window-management" -- 窗口管理
require "Spoons/clipboard" -- 粘贴板
require "Spoons/ime" -- 设置各种应用的默认输入法
require "Spoons/volume" -- 控制声音
require "Spoons/wifi" -- wifi切换
require "Spoons/weather" -- 天气 todo

-- todo
-- 公司 wifi 自动将声音设置为静音

-- 配置文件保存失效a
function reloadConfig(files)
    local doReload = false
    for _, file in pairs(files) do
        if file:sub(-4) == ".lua" then doReload = true end
    end
    if doReload then
        hs.reload()
        hs.alert.show('Config Reloaded')
    end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

-- Well, sometimes auto-reload is not working, you know u.u
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "n", function() hs.reload() end)
hs.alert.show("Config loaded")
