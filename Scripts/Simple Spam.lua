-- SIMPLE SPAM EXAMPLE FOR MY REPO

Text__Settings = {
    Text1 = "`4Text `21",
    Text2 = "`2Text `42",
    Text3 = "`4Text `23",
    Text4 = "`2Text `44"
}

World__Settings = {
    SpamWorld = "",
    PositionX = 44,
    PositionY= 51
}

Delay__Settings = {
    SpamDelay = 4000,
    LoveDelay = 1500,
    PauseDelay = 4000
}

function Spam()
Love = "/love"
Sleep = "/sleep"
Cheer = "/cheer"
    findPath(World__Settings.PositionX - 1, World__Settings.PositionY - 1)
    sleep(1000)
    say(Text__Settings.Text1)
    sleep(Delay__Settings.SpamDelay)
    say(Text__Settings.Text2)
    sleep(500)
    say(Love)
    sleep(Delay__Settings.LoveDelay)
    say(Text__Settings.Text3)
    sleep(Delay__Settings.SpamDelay)
    say(Text__Settings.Text4)
    say(Love)
    sleep(Delay__Settings.LoveDelay)
    say(Sleep)
    sleep(Delay__Settings.PauseDelay)
    say(Cheer)
    if getBot().x and getBot().y ~= World__Settings.PositionX - 1 and  World__Settings.PositionY - 1 then  
        findPath(World__Settings.PositionX - 1, World__Settings.PositionY - 1)
        sleep(2000)
    end    
end        

function JoinWorld()
    if getBot().world ~= World__Settings.SpamWorld then
    sendPacket(3, "action|join_request\nname|" .. World__Settings.SpamWorld .. "\ninvitedWorld|0")
    sleep(5500)
    Spam()
    elseif getBot().world == World__Settings.SpamWorld then
        Spam()
    end    
end        

while true do
    JoinWorld()
end
