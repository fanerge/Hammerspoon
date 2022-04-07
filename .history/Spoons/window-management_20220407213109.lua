function baseMove(x, y, w, h)
    return function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        -- add max.x so it stays on the same screen, works with my second screen
        f.x = max.w * x + max.x
        f.y = max.h * y
        f.w = max.w * w
        f.h = max.h * h
        win:setFrame(f, 0)
    end
end

hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'Left', baseMove(0, 0, 0.5, 1))
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'Right', baseMove(0.5, 0, 0.5, 1))
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'Down', baseMove(0, 0.5, 1, 0.5))
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'Up', baseMove(0, 0, 1, 0.5))

hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'M', hs.grid.maximizeWindow)
hs.hotkey.bind({'ctrl', 'alt', 'cmd'}, 'C', baseMove(0.25, 0.25, 0.5, 0.5))

hs.hotkey.bind({'ctrl', 'cmd'}, 'Left', baseMove(0, 0, 1/3, 1))
hs.hotkey.bind({'ctrl', 'cmd'}, 'Right', baseMove(2/3, 0, 1/3, 1))
hs.hotkey.bind({'alt', 'shift', 'cmd'}, 'Left', baseMove(0, 0, 2/3, 1))
hs.hotkey.bind({'alt', 'shift', 'cmd'}, 'Right', baseMove(1/3, 0, 2/3, 1))
