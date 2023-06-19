-- MULTIBOT SPAM EXAMPLE FOR MY REPO

Bot = {}

Bot["BOT1"] = { -- BOT NAME 
SpamWorld = "",
PositionX = 44,
PositionY= 51,
Text1 = "`4Text `21",
Text2 = "`2Text `42",
Text3 = "`4Text `23",
Text4 = "`2Text `44",
SpamDelay = 4000,
LoveDelay = 1500,
PauseDelay = 4000
}

Bot["BOT2"] = { -- BOT NAME 
SpamWorld = "",
PositionX = 44,
PositionY= 51,
Text1 = "`4Text `21",
Text2 = "`2Text `42",
Text3 = "`4Text `23",
Text4 = "`2Text `44",
SpamDelay = 4000,
LoveDelay = 1500,
PauseDelay = 4000
}



-----------------------------------------------

SpamWorld = Bot[getBot().name].SpamWorld
PositionX = Bot[getBot().name].PositionX
PositionY = Bot[getBot().name].PositionY
Text1 = Bot[getBot().name].Text1
Text2 = Bot[getBot().name].Text2
Text3 = Bot[getBot().name].Text3
Text4 = Bot[getBot().name].Text4
SpamDelay = Bot[getBot().name].SpamDelay
LoveDelay = Bot[getBot().name].LoveDelay
PauseDelay = Bot[getBot().name].PauseDelay

function Spam()
Love = "/love"
Sleep = "/sleep"
Cheer = "/cheer"
    findPath(PositionX - 1, PositionY - 1)
    sleep(1000)
    say(Text1)
    sleep(SpamDelay)
    say(Text2)
    sleep(500)
    say(Love)
    sleep(LoveDelay)
    say(Text3)
    sleep(SpamDelay)
    say(Text4)
    say(Love)
    sleep(LoveDelay)
    say(Sleep)
    sleep(PauseDelay)
    say(Cheer)
    if getBot().x and getBot().y ~= PositionX - 1 and  PositionY - 1 then  
        findPath(PositionX - 1, PositionY - 1)
        sleep(2000)
    end    
end        

function JoinWorld()
    if getBot().world ~= SpamWorld then
    sendPacket(3, "action|join_request\nname|" .. SpamWorld .. "\ninvitedWorld|0")
    sleep(5500)
    Spam()
    elseif getBot().world == SpamWorld then
        Spam()
    end    
end        

while true do
    JoinWorld()
end
