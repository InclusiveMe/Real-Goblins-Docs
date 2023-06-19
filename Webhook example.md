<h1> Basic webhook </h1>

<code>webhook = "" -- Webhook url goes here!</code>

<code>function webHook(description)</code>
    <code>local script = [[</code>
        <code>$webHookUrl = "]]..webhook..[["</code>
        <code>$description = "]]..description..[["</code>
       <code> $embedObject = @{</code>
            <code>description = $description</code>
        <code>}</code>
        <code>$embedArray = @($embedObject)</code>
        <code>$payload = @{</code>
            <code>embeds = $embedArray</code>
        <code>}</code>
        <code>[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12</code>
        <code>Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'</code>
    <code>]]</code>
    <code>local pipe = io.popen("powershell -command -", "w")</code>
    <code>pipe:write(script)</code>
    <code>pipe:close()</code>
<code>end</code>

-- Usage
webHook("Viktors#3943") -- The text you want to appear in webhook goes here!</code>

<img src="[https://cdn.discordapp.com/attachments/1009152912628404266/1120072679651819530/IMG_9451.png](https://cdn.discordapp.com/attachments/1009152912628404266/1120148316924153916/image.png)https://cdn.discordapp.com/attachments/1009152912628404266/1120148316924153916/image.png" alt=""></p>
