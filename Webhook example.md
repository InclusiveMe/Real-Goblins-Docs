<h1> Basic webhook </h1>

<code>webhook = "" -- Webhook url goes here!</code><br>

<code>function webHook(description)</code><br>
    <code>local script = [[</code><br>
        <code>$webHookUrl = "]]..webhook..[["</code><br>
        <code>$description = "]]..description..[["</code><br>
       <code> $embedObject = @{</code><br>
            <code>description = $description</code><br>
        <code>}</code><br>
        <code>$embedArray = @($embedObject)</code><br>
        <code>$payload = @{</code><br>
            <code>embeds = $embedArray</code><br>
        <code>}</code><br>
        <code>[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12</code><br>
        <code>Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'</code><br>
    <code>]]</code><br>
    <code>local pipe = io.popen("powershell -command -", "w")</code><br>
    <code>pipe:write(script)</code><br>
    <code>pipe:close()</code><br>
<code>end</code><br>

<strong> -- Usage</strong>
<code>webHook("Viktors#3943")</code><br> <strong>-- The text you want to appear in webhook goes here!</strong>

<img src="[https://cdn.discordapp.com/attachments/1009152912628404266/1120072679651819530/IMG_9451.png](https://cdn.discordapp.com/attachments/1009152912628404266/1120148316924153916/image.png)https://cdn.discordapp.com/attachments/1009152912628404266/1120148316924153916/image.png" alt=""></p>
