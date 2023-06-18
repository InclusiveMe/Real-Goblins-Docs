# Real Goblins documentaries.

##Common functions.
`sleep(time)`  **Example usage:** *sleep(1000), bot will sleep for 1 second.*
`wear(itemid)`  **Example usage:** *wear(98), bot will wear pickaxe.*
`drop(itemid)` **Example usage:** *drop(98), will drop all pickaxes that the bot has.*
`enter()`  **Enters an door/portal that the bot is on.**
`punch(x,y)` **Example usage:** *punch(1, 0), punch block on the right side of bot.*
`wrench(x,y)` **Example usage:** *Wrench(0, -1), wrench block above.*
`move(x,y)` **Example usage:** *move(1, 0) go to right (1) time.*
`place(itemid,x,y)` **Example usage:** *place(2, 1, 0), bot places dirt on right side.*
`say("text")` **Example usage:** *say("My discord is **Viktors#3943**")*
`sendPacket(2,"action")` **Example usage:** *sendPacket(3, "action|join_request\nname|" .. World .. \ninvitedWorld|0").*
`collectSet(true, range)`  **Example usage:** *collectSet(true/false, 3), turns on auto collect.*
`collect(range)`  **Example usage:** *collect(3), send collect packet.*
`collect(itemid, range)`  **Example usage:** *collect(98, 3), collects the item in the range.*
`findItem(itemid)` **Example usage:** *findItem(2), will show how much dirt bot has.*
`addBot("user","pass")` **Adds bot to the list.**
`addBot("user","pass","ip:port:user:pass")` **Adds bot to the list with proxy.**
`removeBot("user")` **Removes bot by the name from the list.**
`findPath(x,y)` **Example usage:** *findPath(57, 28), bot will findPath to (58,29)*

###Position image, for punch/place/wrench/move.
![](https://cdn.discordapp.com/attachments/1009152912628404266/1120072679651819530/IMG_9451.png)

##Bot information.
`getBot()` **Local bot.**
`getBot("targetbotname")` **Target bot.**
`getBot().name` **Gets the bot name.**
`getBot().world` **Gets the current world bot is in.**
`getBot().status` **Gets the bot status.**
`getBot().x`**Gets bots x position.**
`getBot().y` **Gets bots y position.**
`getBot().slots` **Gets the bot inventory slot amount.**
`getBot().level` **Gets the bot level.**
`getBot().captcha` **Gets bot captcha status.** -- NOT FOR RG.
`getPing()` **Returns bot ping**

`getBots()` **Local bots**
`bot.name`  **Gets the bot name.**
`bot.world` **Gets the current world bot is in.**
`bot.status` **Gets the bot status.**
`bot.x` **Gets bots x position.**
`bot.y` **Gets bots y position.**

###Example usage(1):

`for _, bot in pairs(getBots()) do`
`say(bot.name)`
`sleep(4000)`
`end`

###Example usage(2):

`say(getBot().name)` **Says local bot name.**
`say(getBot("targetbot").name)` **Says target bot name.**

## Tile information.

`getTile(x,y).fg` **Get x,y tile foreground.**
`getTile(x,y).bg` **Get x,y tile background.**
`getTile(x,y).data` **Extra tile data, you can check the itemid inside of the vend.**
`getTile(x,y).ready` **Check if tree is ready to harvest.**
`getTile(x,y).flags` **Get tile flags.**


`getTiles()` **Gets all world tiles.**
`tile.fg` **Tile foreground.**
`tile.bg` **Tile background.**
`tile.x` **Tile x position.**
`tile.y` **Tile y position.**
`tile.data` **Extra tile data, you can check the itemid inside of the vend.**
`tile.ready` **Check if tree is ready to harvest.**
`tile.flags` **Tile flags.**

###Example usage(1):

`for _, tile in pairs(getTiles()) do`
`if tile.fg == 242 then`
`say("Found world lock at:"..tile.x..","..tile.y)`
`end`
`end`

###Example usage(2):

`if getTile(55,23).ready then`
`say("Ready to Harvest")`
`else`
`say("Not ready!")`
`end`

##Object information.

`getObjects()` **Gets objects.**
``object.id`` **Object item id.**
`object.count` **Object item count.**
`object.x` **Object x position.**
`object.y` **Object y position.**
`object.oid` **Object id.**

###Example usage:

`for _, object in pairs(getObjects()) do`
`object.id`
`end`

##Player information.

`getPlayers()` **Gets players.**
`player.name` **Gets player name.**
`player.netid` **Gets player netid.**
`player.userid` **Gets player user id(UID).**
`player.country` **Gets player country.**
`player.x / player.y` **On getPlayers() function**

###Example usage:

`for _, player in pairs(getPlayers()) do`
`players.name`
`end`

##Inventory information.

`getInventory()` **Gets inventory.**
`item.name` **Gets item name.**
`item.id` **Gets item id.**
`item.count` **Gets item count.**

###Example usage:

`for _, item in pairs(getInventory()) do`
`item.id`
`end`

##Connect information.
`disconnect()` **Disconnects the bot.**
`connect()` **Connects the bot to online.**

##Clothes information.

`getClothes()` **Returns all weared items the bot is wearing.**
`findClothes(itemid)` **Returns if the item is worn already or not.**

##Bool information.

`setBool("boolname ", true/false)`
###Bool name List
Select All
Guest Account
External
Auto Access
Auto Reconnect
Auto Leave
Ignore Gems

###Example usages: 
`setBool("Auto Reconnect", false)` **Bot will turn off auto reconnect.**
`setBool("Ignore Gems", true)` **Bot will ignore floating gems.**

##Raw sendPacket(s) information.
`pkt = {}`
`pkt.type --0`
`pkt.flags --12`
`pkt.int_data --20`
`pkt.pos_x --24`
`pkt.pos_y --28`
`pkt.pos2_x --32`
`pkt.pos2_y --36`
`pkt.int_x --44`
`pkt.int_y --48`

###Example usage:
`sendPacketRaw(pkt)`  **Sends game packet.**

##Signal information.
`getSignal()` **Returns geiger signal.**

##Web information.
`request(type, url)` **Gets text from target url.**

###Example usage: 
`request("GET", "https://www.google.com")` 
**Possible types; "GET" / "POST" / "PATCH"**
