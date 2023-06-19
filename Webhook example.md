<h1> Basic webhook </h1>

```lua
webhook = "" -- Webhook URL goes here!

function webHook(description)
    local script = [[
        $webHookUrl = "]]..webhook..[["
        $description = "]]..description..[["
        $embedObject = @{
            description = $description
        }
        $embedArray = @($embedObject)
        $payload = @{
            embeds = $embedArray
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]
    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

-- Usage
webHook("Viktors#3943") -- Text for webhook goes here!```

<img src="https://cdn.discordapp.com/attachments/1009152912628404266/1120148316924153916/image.png" alt=""></p>
