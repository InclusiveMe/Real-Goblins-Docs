<h1 class="has-line-data" data-line-start="2" data-line-end="21">Common functions.</h1>
  
|                  Function                 	|                                         Description                                        	|
|:-----------------------------------------:	|:------------------------------------------------------------------------------------------:	|
| sleep(time)                               	| Bot will sleep for that time (milliseconds)                                                	|
|                wear(itemid)               	| Example usage: wear(98), bot will wear pickaxe.                                            	|
| drop(itemid)                              	| Example usage: drop(98), will drop all pickaxes that the bot has.                          	|
| enter()                                   	| Bot will enter an door/portal that the bot is on.                                          	|
| punch(x,y)                                	| Example usage: punch(1, 0), punch block on the right side of bot.                          	|
| wrench(x,y)                               	| Example usage: wrench(0, -1), wrench block above.                                          	|
| move(x,y)                                 	| Example usage: move(1, 0) go to right (1) time.                                            	|
| place(itemid,x,y)                         	| Example usage: place(2, 1, 0), bot places dirt on right side.                              	|
| say("hi")                                 	| Example usage: say("My discord is Viktors#3943")                                           	|
| sendPacket(2,"action")                    	| Example usage: sendPacket(3, “action\|join_request\nname\|” … World … \ninvitedWorld\|0"). 	|
| collectSet(true/false, range)             	| Example usage: collectSet(true/false, 3), turns on auto collect.                           	|
| collect(range,itemid)                    	  | Example usage: collect(3, 98), collects the item in the range.                              |
| findItem(itemid)                          	| Example usage: findItem(2), will show how much dirt bot has.                               	|
| addBot("user","pass")                     	| Adds bot to the list.                                                                      	|
| addBot("user","pass","ip:port:user:pass") 	| Adds bot to the list with proxy.                                                           	|
| removeBot("user")                         	| Example usage: removeBot(getBot().name)                                                    	|
| findPath(x,y)                             	| Example usage: findPath(57, 28), bot will findPath to (58,29)                              	|
<p class="has-line-data" data-line-start="22" data-line-end="24">Position image, for punch/place/wrench/move.<br>
<img src="https://cdn.discordapp.com/attachments/1009152912628404266/1120072679651819530/IMG_9451.png" alt=""></p>
<h2 class="has-line-data" data-line-start="25" data-line-end="37">Bot information.</h2>
  
|         Function        	|               Description              	|
|:-----------------------:	|:--------------------------------------:	|
| getBot()                	| Local bot.                             	|
| getBot("targetbotname") 	| Target bot.                            	|
| getBot().name           	| Gets the bot name.                     	|
| getBot().world          	| Gets the current world bot is in.      	|
| getBot().status         	| Gets the bot status.                   	|
| getBot().x              	| Gets bots x position.                  	|
| getBot().y              	| Gets bots y position.                  	|
| getBot().slots          	| Gets the bot inventory slot amount.    	|
| getBot().level          	| Gets the bot level.                    	|
| getBot().captcha        	| Gets bot captcha status. – NOT FOR RG. 	|
| getPing()               	| Returns bot ping                       	|
| getBots()               	| Local bots.                            	|
| bot.name                	| Gets the bot name.                     	|
| bot.world               	| Gets the current world bot is in.      	|
| bot.status              	| Gets the bot status.                   	|
| bot.x                   	| Gets bots x position.                  	|
| bot.y                   	| Gets bots y position.                  	|
<h4 class="has-line-data" data-line-start="75" data-line-end="76">Example usage(1):</h4>

```lua
for _, bot in pairs(getBots()) do
say(bot.name) -- Says bot name.
sleep(4000)
end
```

<h4 class="has-line-data" data-line-start="75" data-line-end="76">Example usage(2):</h4>

```lua
say(getBot().name) -- Says local bot name.
say(getBot("targetbot").name) -- Says target bot name.
```
<h2 class="code-line" data-line-start=57 data-line-end=58 ><a id="Tile_information_57"></a>Tile information.</h2>

|      Function      	|                          Description                          	|
|:------------------:	|:-------------------------------------------------------------:	|
| getTile(x,y).fg    	| Get x,y tile foreground.                                      	|
| getTile(x,y).bg    	| Get x,y tile background.                                      	|
| getTile(x,y).data  	| Extra tile data, you can check the itemid inside of the vend. 	|
| getTile(x,y).ready 	| Check if tree is ready to harvest.                            	|
| getTile(x,y).flags 	| Get tile flags.                                               	|
| getTiles()         	| Gets all world tiles.                                         	|
| tile.fg            	| Tile foreground.                                              	|
| tile.x             	| Tile x position.                                              	|
| tile.y             	| Tile y position.                                              	|
| tile.data          	| Extra tile data, you can check the itemid inside of the vend. 	|
| tile.ready         	| Returns bot ping.                                             	|
| tile.flags         	| Tile flags.                                                   	|
<h4 class="has-line-data" data-line-start="75" data-line-end="76">Example usage(1):</h4>
<p class="has-line-data" data-line-start="77" data-line-end="82">
  
```lua  
for _, tile in pairs(getTiles()) do
    if tile.fg == 242 then
       say("Found world lock at "..tile.x..", "..tile.y)
    end
end
```
<h4 class="has-line-data" data-line-start="83" data-line-end="84">Example usage(2):</h4>
<p class="has-line-data" data-line-start="85" data-line-end="90">
  
```lua
if getTile(55,23).ready then
say("Ready to Harvest")
else
say("Not ready!")
end
```
<h2 class="has-line-data" data-line-start="91" data-line-end="92">Object information.</h2>

|   Function   	|     Description    	|
|:------------:	|:------------------:	|
| getObjects() 	| Gets objects.      	|
| object.id    	| Object item id.    	|
| object.count 	| Object item count. 	|
| object.x     	| Object x position. 	|
| object.y     	| Object y position. 	|
| object.oid   	| Object id.         	|
<h4 class="has-line-data" data-line-start="100" data-line-end="101">Example usage:</h4>

```lua
for _, object in pairs(getObjects()) do
object.id
end
```
<h2 class="has-line-data" data-line-start="106" data-line-end="107">Player information.</h2>

```lua
getPlayers() -- Gets players.
player.name -- Gets player name.
player.netid -- Gets player netid.
player.userid -- Gets player user id(UID).
player.country -- Gets player country.
player.x / player.y -- On getPlayers() function
```
<h4 class="has-line-data" data-line-start="115" data-line-end="116">Example usage:</h4>

```lua
for _, player in pairs(getPlayers()) do
players.name
end
```
<h2 class="has-line-data" data-line-start="121" data-line-end="122">Inventory information.</h2>

```lua
getInventory() -- Gets inventory.
item.name -- Gets item name.
item.id -- Gets item id.
item.count -- Gets item count.
```
<h4 class="has-line-data" data-line-start="128" data-line-end="129">Example usage:</h4>

```lua
for _, item in pairs(getInventory()) do
item.id
end
```

<h2 class="has-line-data" data-line-start="134" data-line-end="137">Connect information.</h2>
  
```lua
disconnect() -- Disconnects the bot.
connect() -- Connects the bot to online.
```
<h2 class="has-line-data" data-line-start="138" data-line-end="139">Clothes information.</h2>
  
```lua
getClothes() -- Returns all items the bot is wearing.
findClothes(itemid) -- Returns if the item is worn already or not.
```
<h2 class="has-line-data" data-line-start="143" data-line-end="144">Bool information.</h2>

```lua
setBool("boolname", true/false)
```
<h3>Bool name List // MOST ARE NOT FOR RG.</h3>

```lua
Select All
Guest Account
External
Auto Access
Auto Reconnect
Auto Leave
Ignore Gems
```
<h4 class="has-line-data" data-line-start="155" data-line-end="158">Example usages:</h4>
  
```lua
setBool("Auto Reconnect", false) -- Bot will turn off auto reconnect.
setBool("Ignore Gems", true) -- Bot will ignore floating gems.
```
<h2 class="has-line-data" data-line-start="159" data-line-end="170">Raw sendPacket(s) information.</h2>

```lua
pkt = {}
pkt.type -- 0
pkt.flags -- 12
pkt.int_data -- 20
pkt.pos_x -- 24
pkt.pos_y -- 28
pkt.pos2_x -- 32
pkt.pos2_y -- 36
pkt.int_x -- 44
pkt.int_y -- 48
```
<h4 class="has-line-data" data-line-start="171" data-line-end="173">Example usage:</h4>

```lua
sendPacketRaw(pkt) -- Sends game packet.
```
<h2 class="has-line-data" data-line-start="174" data-line-end="176">Signal information.</h2>

```lua
getSignal() -- Returns geiger signal.
```
<h2 class="has-line-data" data-line-start="177" data-line-end="179">Web information.</h2>

```lua
request(type, url) -- Gets text from target url.
```
<h4 class="has-line-data" data-line-start="180" data-line-end="183">Example usage:</h4>

```lua
request("GET", "https://www.google.com")
```

<h4 class="has-line-data" data-line-start="180" data-line-end="183">Possible types:</h4>

```lua
"GET” / “POST” / “PATCH" .
```

<h2 class="has-line-data" data-line-start="180" data-line-end="183">Fishing information.</h2>

```lua
startFishing(baitid) -- Bot will automatically start fishing using the bait id.
stopFishing() -- Bot will stop fishing.
```
---
This will get fulfilled later on. - Viktors
