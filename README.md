<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="Real_Goblins_documentaries_0"></a>Real Goblins documentaries.</h1>
<p class="has-line-data" data-line-start="2" data-line-end="21">#Common functions.<br>
<code>sleep(time)</code>  <strong>Example usage:</strong> <em>sleep(1000), bot will sleep for 1 second.</em><br>
<code>wear(itemid)</code>  <strong>Example usage:</strong> <em>wear(98), bot will wear pickaxe.</em><br>
<code>drop(itemid)</code> <strong>Example usage:</strong> <em>drop(98), will drop all pickaxes that the bot has.</em><br>
<code>enter()</code>  <strong>Enters an door/portal that the bot is on.</strong><br>
<code>punch(x,y)</code> <strong>Example usage:</strong> <em>punch(1, 0), punch block on the right side of bot.</em><br>
<code>wrench(x,y)</code> <strong>Example usage:</strong> <em>Wrench(0, -1), wrench block above.</em><br>
<code>move(x,y)</code> <strong>Example usage:</strong> <em>move(1, 0) go to right (1) time.</em><br>
<code>place(itemid,x,y)</code> <strong>Example usage:</strong> <em>place(2, 1, 0), bot places dirt on right side.</em><br>
<code>say(&quot;text&quot;)</code> <strong>Example usage:</strong> <em>say(&quot;My discord is <strong>Viktors#3943</strong>&quot;)</em><br>
<code>sendPacket(2,&quot;action&quot;)</code> <strong>Example usage:</strong> <em>sendPacket(3, “action|join_request\nname|” … World … \ninvitedWorld|0&quot;).</em><br>
<code>collectSet(true, range)</code>  <strong>Example usage:</strong> <em>collectSet(true/false, 3), turns on auto collect.</em><br>
<code>collect(range)</code>  <strong>Example usage:</strong> <em>collect(3), send collect packet.</em><br>
<code>collect(itemid, range)</code>  <strong>Example usage:</strong> <em>collect(98, 3), collects the item in the range.</em><br>
<code>findItem(itemid)</code> <strong>Example usage:</strong> <em>findItem(2), will show how much dirt bot has.</em><br>
<code>addBot(&quot;user&quot;,&quot;pass&quot;)</code> <strong>Adds bot to the list.</strong><br>
<code>addBot(&quot;user&quot;,&quot;pass&quot;,&quot;ip:port:user:pass&quot;)</code> <strong>Adds bot to the list with proxy.</strong><br>
<code>removeBot(&quot;user&quot;)</code> <strong>Removes bot by the name from the list.</strong><br>
<code>findPath(x,y)</code> <strong>Example usage:</strong> <em>findPath(57, 28), bot will findPath to (58,29)</em></p>
<p class="has-line-data" data-line-start="22" data-line-end="24">#Position image, for punch/place/wrench/move.<br>
<img src="https://cdn.discordapp.com/attachments/1009152912628404266/1120072679651819530/IMG_9451.png" alt=""></p>
<p class="has-line-data" data-line-start="25" data-line-end="37">#Bot information.<br>
<code>getBot()</code> <strong>Local bot.</strong><br>
<code>getBot(&quot;targetbotname&quot;)</code> <strong>Target bot.</strong><br>
<code>getBot().name</code> <strong>Gets the bot name.</strong><br>
<code>getBot().world</code> <strong>Gets the current world bot is in.</strong><br>
<code>getBot().status</code> <strong>Gets the bot status.</strong><br>
<code>getBot().x</code><strong>Gets bots x position.</strong><br>
<code>getBot().y</code> <strong>Gets bots y position.</strong><br>
<code>getBot().slots</code> <strong>Gets the bot inventory slot amount.</strong><br>
<code>getBot().level</code> <strong>Gets the bot level.</strong><br>
<code>getBot().captcha</code> <strong>Gets bot captcha status.</strong> – NOT FOR RG.<br>
<code>getPing()</code> <strong>Returns bot ping</strong></p>
<p class="has-line-data" data-line-start="38" data-line-end="44"><code>getBots()</code> <strong>Local bots</strong><br>
<code>bot.name</code>  <strong>Gets the bot name.</strong><br>
<code>bot.world</code> <strong>Gets the current world bot is in.</strong><br>
<code>bot.status</code> <strong>Gets the bot status.</strong><br>
<code>bot.x</code> <strong>Gets bots x position.</strong><br>
<code>bot.y</code> <strong>Gets bots y position.</strong></p>
<p class="has-line-data" data-line-start="45" data-line-end="46">#Example usage(1):</p>
<p class="has-line-data" data-line-start="47" data-line-end="51"><code>for _, bot in pairs(getBots()) do</code><br>
<code>say(bot.name)</code><br>
<code>sleep(4000)</code><br>
<code>end</code></p>
<p class="has-line-data" data-line-start="52" data-line-end="53">#Example usage(2):</p>
<p class="has-line-data" data-line-start="54" data-line-end="56"><code>say(getBot().name)</code> <strong>Says local bot name.</strong><br>
<code>say(getBot(&quot;targetbot&quot;).name)</code> <strong>Says target bot name.</strong></p>
<h2 class="code-line" data-line-start=57 data-line-end=58 ><a id="Tile_information_57"></a>Tile information.</h2>
<p class="has-line-data" data-line-start="59" data-line-end="64"><code>getTile(x,y).fg</code> <strong>Get x,y tile foreground.</strong><br>
<code>getTile(x,y).bg</code> <strong>Get x,y tile background.</strong><br>
<code>getTile(x,y).data</code> <strong>Extra tile data, you can check the itemid inside of the vend.</strong><br>
<code>getTile(x,y).ready</code> <strong>Check if tree is ready to harvest.</strong><br>
<code>getTile(x,y).flags</code> <strong>Get tile flags.</strong></p>
<p class="has-line-data" data-line-start="66" data-line-end="74"><code>getTiles()</code> <strong>Gets all world tiles.</strong><br>
<code>tile.fg</code> <strong>Tile foreground.</strong><br>
<code>tile.bg</code> <strong>Tile background.</strong><br>
<code>tile.x</code> <strong>Tile x position.</strong><br>
<code>tile.y</code> <strong>Tile y position.</strong><br>
<code>tile.data</code> <strong>Extra tile data, you can check the itemid inside of the vend.</strong><br>
<code>tile.ready</code> <strong>Check if tree is ready to harvest.</strong><br>
<code>tile.flags</code> <strong>Tile flags.</strong></p>
<p class="has-line-data" data-line-start="75" data-line-end="76">#Example usage(1):</p>
<p class="has-line-data" data-line-start="77" data-line-end="82"><code>for _, tile in pairs(getTiles()) do</code><br>
<code>if tile.fg == 242 then</code><br>
<code>say(&quot;Found world lock at:&quot;..tile.x..&quot;,&quot;..tile.y)</code><br>
<code>end</code><br>
<code>end</code></p>
<p class="has-line-data" data-line-start="83" data-line-end="84">#Example usage(2):</p>
<p class="has-line-data" data-line-start="85" data-line-end="90"><code>if getTile(55,23).ready then</code><br>
<code>say(&quot;Ready to Harvest&quot;)</code><br>
<code>else</code><br>
<code>say(&quot;Not ready!&quot;)</code><br>
<code>end</code></p>
<p class="has-line-data" data-line-start="91" data-line-end="92">#Object information.</p>
<p class="has-line-data" data-line-start="93" data-line-end="99"><code>getObjects()</code> <strong>Gets objects.</strong><br>
<code>object.id</code> <strong>Object item id.</strong><br>
<code>object.count</code> <strong>Object item count.</strong><br>
<code>object.x</code> <strong>Object x position.</strong><br>
<code>object.y</code> <strong>Object y position.</strong><br>
<code>object.oid</code> <strong>Object id.</strong></p>
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
<h2 class="has-line-data" data-line-start="138" data-line-end="139">Clothes information.</h2>
<p class="has-line-data" data-line-start="140" data-line-end="142"><code>getClothes()</code> <strong>Returns all weared items the bot is wearing.</strong><br>
<code>findClothes(itemid)</code> <strong>Returns if the item is worn already or not.</strong></p>
<h2 class="has-line-data" data-line-start="143" data-line-end="144">Bool information.</p>
<p class="has-line-data" data-line-start="145" data-line-end="154"><code>setBool(&quot;boolname &quot;, true/false)</code><br>
<h3></h3>Bool name List</h3>
Select All<br>
Guest Account<br>
External<br>
Auto Access<br>
Auto Reconnect<br>
Auto Leave<br>
Ignore Gems</p>
<h4 class="has-line-data" data-line-start="155" data-line-end="158">Example usages:<br>
<code>setBool(&quot;Auto Reconnect&quot;, false)</code> <strong>Bot will turn off auto reconnect.</strong><br>
<code>setBool(&quot;Ignore Gems&quot;, true)</code> <strong>Bot will ignore floating gems.</strong></p>
<h2 class="has-line-data" data-line-start="159" data-line-end="170">Raw sendPacket(s) information.<br>
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
