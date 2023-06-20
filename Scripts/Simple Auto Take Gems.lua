WorldTake = {"",""}
IdTake = ""
TakeItemID = 112

for _,list in pairs(WorldTake) do
    sendPacket(3,"action|join_request\nname|"..list.."|"..IdTake.."\ninvitedWorld|0")
sleep(6000)

collectSet(true, 3)
for _, object in pairs(getObjects()) do
if object.id == TakeItemID  then
findPath(math.floor((object.x) / 32), math.floor((object.y) / 32))
sleep(300)
  end
 end
end

removeBot(getBot().name)
