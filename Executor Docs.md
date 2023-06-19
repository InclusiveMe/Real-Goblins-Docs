<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="Real_Goblins_documentaries_0"></a>Real Goblins documentaries.</h1>
<p class="has-line-data" data-line-start="2" data-line-end="21">Common functions.<br>
  
```lua
sleep(time) -- Bot will sleep for that time (millisecond)
wear(itemid) -- Example usage: wear(98), bot will wear pickaxe.
drop(itemid) -- Example usage: drop(98), will drop all pickaxes that the bot has.
enter() -- Bot will enter an door/portal that the bot is on.
punch(x,y) -- Example usage: punch(1, 0), punch block on the right side of bot.
wrench(x,y) -- Example usage: Wrench(0, -1), wrench block above.
move(x,y) -- Example usage: move(1, 0) go to right (1) time.
place(itemid,x,y) -- Example usage: place(2, 1, 0), bot places dirt on right side.
say("hi") -- Example usage: say("My discord is Viktors#3943")
sendPacket(2,"action") -- Example usage: sendPacket(3, “action|join_request\nname|” … World … \ninvitedWorld|0").
collectSet(true/false, range) -- Example usage: collectSet(true/false, 3), turns on auto collect.
collect(itemid, range) -- Example usage: collect(98, 3), collects the item in the range.
findItem(itemid) -- Example usage: findItem(2), will show how much dirt bot has.
addBot("user","pass") -- Adds bot to the list.
addBot("user","pass","ip:port:user:pass") -- Adds bot to the list with proxy.
removeBot("user") -- Removes bot by the name from the list.
findPath(x,y) -- Example usage: findPath(57, 28), bot will findPath to (58,29)
```
<p class="has-line-data" data-line-start="22" data-line-end="24">Position image, for punch/place/wrench/move.<br>
<img src="https://cdn.discordapp.com/attachments/1009152912628404266/1120072679651819530/IMG_9451.png" alt=""></p>
<h2 class="has-line-data" data-line-start="25" data-line-end="37">Bot information.</h2>
  
```lua
getBot() -- Local bot.
getBot("targetbotname") -- Target bot.
getBot().name -- Gets the bot name.
getBot().world -- Gets the current world bot is in.
getBot().status -- Gets the bot status.
getBot().x --Gets bots x position.
getBot().y -- Gets bots y position.
getBot().slots -- Gets the bot inventory slot amount.
getBot().level -- Gets the bot level.
getBot().captcha -- Gets bot captcha status. – NOT FOR RG.
getPing() -- Returns bot ping

getBots() -- Local bots.
bot.name -- Gets the bot name.
bot.world -- Gets the current world bot is in.
bot.status -- Gets the bot status.
bot.x -- Gets bots x position.
bot.y -- Gets bots y position.
```
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

```lua
getTile(x,y).fg -- Get x,y tile foreground.
getTile(x,y).bg -- Get x,y tile background.
getTile(x,y).data -- Extra tile data, you can check the itemid inside of the vend.
getTile(x,y).ready -- Check if tree is ready to harvest.
getTile(x,y).flags -- Get tile flags.

getTiles() -- Gets all world tiles.
tile.fg -- Tile foreground.
tile.bg -- Tile background.
tile.x -- Tile x position.
tile.y -- Tile y position.
tile.data -- Extra tile data, you can check the itemid inside of the vend.
tile.ready -- Check if tree is ready to harvest.
tile.flags -- Tile flags
```
<h4 class="has-line-data" data-line-start="75" data-line-end="76">Example usage(1):</h4>
<p class="has-line-data" data-line-start="77" data-line-end="82">
  
```lua  
for _, tile in pairs(getTiles()) do</code><br>
    if tile.fg == 242 then</code><br>
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

```lua
getObjects() -- Gets objects.
object.id -- Object item id.
object.count -- Object item count.
object.x -- Object x position.
object.y -- Object y position.
object.oid -- Object id.
```
<h4 class="has-line-data" data-line-start="100" data-line-end="101">Example usage:</h4>
<p class="has-line-data" data-line-start="102" data-line-end="105"><code>for _, object in pairs(getObjects()) do</code><br>
<code>object.id</code><br>
<code>end</code></p>
<h2 class="has-line-data" data-line-start="106" data-line-end="107">Player information.</h2>
<p class="has-line-data" data-line-start="108" data-line-end="114"><code>getPlayers()</code> <strong>Gets players.</strong><br>
<code>player.name</code> <strong>Gets player name.</strong><br>
<code>player.netid</code> <strong>Gets player netid.</strong><br>
<code>player.userid</code> <strong>Gets player user id(UID).</strong><br>
<code>player.country</code> <strong>Gets player country.</strong><br>
<code>player.x / player.y</code> <strong>On getPlayers() function</strong></p>
<h4 class="has-line-data" data-line-start="115" data-line-end="116">Example usage:</h4>
<p class="has-line-data" data-line-start="117" data-line-end="120"><code>for _, player in pairs(getPlayers()) do</code><br>
<code>players.name</code><br>
<code>end</code></p>
<h2 class="has-line-data" data-line-start="121" data-line-end="122">Inventory information.</h2>
<p class="has-line-data" data-line-start="123" data-line-end="127"><code>getInventory()</code> <strong>Gets inventory.</strong><br>
<code>item.name</code> <strong>Gets item name.</strong><br>
<code>item.id</code> <strong>Gets item id.</strong><br>
<code>item.count</code> <strong>Gets item count.</strong></p>
<h4 class="has-line-data" data-line-start="128" data-line-end="129">Example usage:</h4>
<p class="has-line-data" data-line-start="130" data-line-end="133"><code>for _, item in pairs(getInventory()) do</code><br>
<code>item.id</code><br>
<code>end</code></p>
<h2 class="has-line-data" data-line-start="134" data-line-end="137">Connect information.<br>
<code>disconnect()</code> <strong>Disconnects the bot.</strong><br>
<code>connect()</code> <strong>Connects the bot to online.</strong></p>
<h2 class="has-line-data" data-line-start="138" data-line-end="139">Clothes information.<br>
<p class="has-line-data" data-line-start="140" data-line-end="142"><code>getClothes()</code> <strong>Returns all items the bot is wearing.</strong>
<code>findClothes(itemid)</code> <strong>Returns if the item is worn already or not.</strong></h2>
<h2 class="has-line-data" data-line-start="143" data-line-end="144">Bool information.<br>
<p class="has-line-data" data-line-start="145" data-line-end="154"><code>setBool(&quot;boolname &quot;, true/false)</code>
<h3>Bool name List<br> // MOST ARE NOT FOR RG. <br>
Select All<br>
Guest Account<br>
External<br>
Auto Access<br>
Auto Reconnect<br>
Auto Leave<br>
Ignore Gems</h3></h2></br>
<h4 class="has-line-data" data-line-start="155" data-line-end="158">Example usages:<br>
<code>setBool(&quot;Auto Reconnect&quot;, false)</code> <strong>Bot will turn off auto reconnect.</strong>
<code>setBool(&quot;Ignore Gems&quot;, true)</code> <strong>Bot will ignore floating gems.</strong></br>
<h2 class="has-line-data" data-line-start="159" data-line-end="170">Raw sendPacket(s) information.</h2>
<code>pkt = {}</code><br>
<code>pkt.type --0</code><br>
<code>pkt.flags --12</code><br>
<code>pkt.int_data --20</code><br>
<code>pkt.pos_x --24</code><br>
<code>pkt.pos_y --28</code><br>
<code>pkt.pos2_x --32</code><br>
<code>pkt.pos2_y --36</code><br>
<code>pkt.int_x --44</code><br>
<code>pkt.int_y --48</code></p>
<h4 class="has-line-data" data-line-start="171" data-line-end="173">Example usage:<br>
<code>sendPacketRaw(pkt)</code>  <strong>Sends game packet.</strong></p>
<h2 class="has-line-data" data-line-start="174" data-line-end="176">Signal information.<br>
<code>getSignal()</code> <strong>Returns geiger signal.</strong></p>
<h2 class="has-line-data" data-line-start="177" data-line-end="179">Web information.<br>
<code>request(type, url)</code> <strong>Gets text from target url.</strong></p>
<h4 class="has-line-data" data-line-start="180" data-line-end="183">Example usage:<br>
<code>request(&quot;GET&quot;, &quot;https://www.google.com&quot;)</code><br>
<strong>Possible types; “GET” / “POST” / “PATCH”</strong></p>

---
This will get fulfilled later on. - Viktors
