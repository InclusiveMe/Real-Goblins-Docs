BaitId =
Direction = 1 -- Do -1 If facing left
GemoId = 1474
GemoDuration = 3000000
function fishgemo()
place(GemoId,0,0)
sleep(1000)

function hook(varlist)
    if varlist[0] == "OnPlayPositioned" and varlist[1] == "audio/splash.wav" then -- ONLY 1 BOT PER WORLD, WILL MAKE AN DIFFERENT ONE WITH 'StartFishing()' sometime later.
        place(BaitId,Direction,1)
        sleep(500)
        place(BaitId,Direction,1)
        sleep(500)
    end
end

addHook("hook",hook)

place(BaitId,Direction,1)
sleep(GemoDuration)
end

fishgemo()
