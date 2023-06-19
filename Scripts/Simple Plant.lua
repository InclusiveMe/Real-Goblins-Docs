-- PLANT EXAMPLE FOR MY REPO   

Plant__Settings = {
    SeedId = 4585,
    PlantDelay = 170
}

Farm__Settings = {
    FarmList = {"", ""},
    DoorId = ""
}

Storage__Settings = {
    Storage = "",
    DoorId = ""
}

function goFloat(id)
    for _, obj in pairs(getObjects()) do
        if obj.id == id then 
            if (getTile (math.floor((obj.x+10)/32),math.floor((obj.y+10)/32)).flags == 0 or 
                getTile (math.floor((obj.x+10)/32),math.floor((obj.y+10)/32)).flags == 2) then
                findPath(math.floor((obj.x+10)/32),math.floor((obj.y+10)/32))
                sleep(1000)
                collect(3)      
                return true
            end
        end
    end
  return false
end

function scanFloat(itemid)
    local count = 0
    for _, obj in pairs(getObjects()) do
        if obj.id == itemid then
            count = count + obj.count
        end
    end
    return count
end

function Plant()
    for _, tile in pairs(getTiles()) do
        if tile.fg ~= 0 and tile.y > 1 and getTile(tile.x, tile.y -1).fg == 0 and getTile(tile.x, tile.y).fg ~= Plant__Settings.SeedId and getTile(tile.x, tile.y).fg ~= Plant__Settings.SeedId-1 and getTile(tile.x-2, tile.y -1).fg ~= 6 and getTile(tile.x+2, tile.y -1).fg ~= 6 then      
          findPath(tile.x, tile.y-1)
          sleep(100)
          while getTile(math.floor(getBot().x/32), math.floor(getBot().y/32)).fg == 0 do
      place(Plant__Settings.SeedId,0,0)
      sleep(Plant__Settings.PlantDelay)
      if findItem(Plant__Settings.SeedId) == 0 then
        JoinStorage()
          end
        end    
      end 
    end   
end       

function JoinWorld()
FarmList = Farm__Settings.FarmList
    for i = 1, #FarmList do
    sendPacket(3, "action|join_request\nname|" .. FarmList[i] .. "|" .. Farm__Settings.DoorId .. "\ninvitedWorld|0")   
    sleep(5500)
    Plant()
    end    
end

function JoinStorage()
    sendPacket(3, "action|join_request\nname|" .. Storage__Settings.Storage .. "|" .. Storage__Settings.DoorId .. "\ninvitedWorld|0")   
    sleep(5500)
    if scanFloat(Plant__Settings.SeedId) > 0 then  
        goFloat(Plant__Settings.SeedId)
        collectSet(false, 1)
        if findItem(Plant__Settings.SeedId) > 0 then  
            JoinWorld()
        elseif scanFloat(Plant__Settings.SeedId) == 0 then  
            removeBot(getBot().name)
        end    
    end   
end            


function CheckInventory()
    if findItem(Plant__Settings.SeedId) > 0 then 
        JoinWorld()
    elseif findItem(Plant__Settings.SeedId) == 0 then 
        JoinStorage()
    end    
end        

while true do 
   JoinStorage()
 end
