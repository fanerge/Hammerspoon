-- cmd + q 锁屏快捷键
hs.hotkey.bind({"cmd", }, "q", function()
    hs.alert.show("2s后即将锁屏")
    hs.timer.doAfter(1.5, function()
        --hs.alert.show("锁屏")
        hs.caffeinate.lockScreen()
    end)
end)