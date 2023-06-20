PickaxeWorld = "" -- WORLD WHERE BOT WILL TAKE PICKAXE, IF TakePickaxe SET TO false, LEAVE BLANK 
PickaxeID  = ""  -- DOOR ID WHERE BOT WILL TAKE PICKAXE, IF TakePickaxe SET TO false, LEAVE BLANK

function goFloat(id)
    for _, obj in pairs(getObjects()) do
        if obj.id == id then 
            if (getTile (math.floor((obj.x+10)/32),math.floor((obj.y+10)/32)).flags == 0 or 
                getTile (math.floor((obj.x+10)/32),math.floor((obj.y+10)/32)).flags == 2) then
                findPath(math.floor((obj.x+10)/32),math.floor((obj.y+10)/32))
                sleep(1000)
                collect(3)
                collectSet(false,3)    
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

function TakePickaxe()
    clothes = 98
    sendPacket(3, "action|join_request\nname|" .. PickaxeWorld .. "|" .. PickaxeID .. "\ninvitedWorld|0")
    sleep(6000)
    if findItem(clothes) > 0 and not findClothes(clothes) then
        while not findClothes(clothes) do
            wear(clothes)
            sleep(1000)
        end
        if findClothes(clothes) and findItem(clothes) > 1 then
            collectSet(false, 1)
            sleep(500)
            while findItem(clothes) ~= 1 do
                drop(clothes,(findItem(clothes)-1))
                sleep(1000)
                move(-1,0)
                sleep(1000)
            end
            say("Just wore Pickaxe")
            sleep(1000)
        elseif findClothes(clothes) and findItem(clothes) == 1 then
            say("Just wore Pickaxe")
            sleep(1000)
        end
    elseif findItem(clothes) > 0 and findClothes(clothes) then
        say("I'm already using Pickaxe!")
        sleep(1000)
    elseif findItem(clothes) == 0 and not findClothes(clothes) then
        if scanFloat(clothes) > 0 then
            goFloat(clothes)
            sleep(500)
            if findItem(clothes) > 1 then
                collectSet(false, 1)
                sleep(1000)
                while findItem(clothes) ~= 1 do
                    move(-1,0)
                    sleep(1000)
                    drop(clothes,(findItem(clothes)-1))
                    sleep(900)
                end
                while not findClothes(clothes) do
                    wear(clothes)
                    sleep(1000)
                end
                if findClothes(clothes) then
                    say("Just wore Pickaxe")
                    sleep(1000)
                end
            elseif findItem(clothes) == 1 and not findClothes(clothes) then
                while not findClothes(clothes) do
                    wear(clothes)
                    sleep(500)
                end
                if findClothes(clothes) then
                    say("Just wore Pickaxe")
                    sleep(1000)
                end
            end
        elseif scanFloat(clothes) == 0 then
            say("There isn't any pickaxe in the world")
            sleep(1000)
        end
        end
    end
end
