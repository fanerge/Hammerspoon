-- cmd + q 锁屏快捷键
hs.hotkey.bind({"cmd", }, "q", function()
    hs.alert.show("1s后锁屏")
    hs.timer.doAfter(1, function()
        --hs.alert.show("锁屏")
        hs.caffeinate.lockScreen()
    end)
end)