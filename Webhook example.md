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
webHook("Viktors#3943") -- Text for webhook goes here!
```

<img src="https://cdn.discordapp.com/attachments/1009152912628404266/1120148316924153916/image.png" alt=""></p>

<h1> Webhook with information </h1>

```lua
webhook = ""

function webHook()
    local script = [[
        $webHookUrl = "]]..webhook..[["
        $desc = "**Bot Information**"
        $cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average
        $ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue
        $fieldArray = @(
            @{
                name = "Bot Name"
                value = "]]..getBot().name..[["
                inline = "true"
            }
            @{
                name = "Gems"
                value = "]]..findItem(112)..[["
                inline = "true"
            }
            @{
                name = "World"
                value = "]]..getBot().world..[["
                inline = "true"
            }
            @{
                name = "CPU Usage"
                value = "$cpu%"
                inline = "true"
            }
            @{
                name = "RAM Usage"
                value = "$ram MB"
                inline = "true"
            }
            @{
                name = "Status"
                value = "]]..getBot().status..[["
                inline = "true"
            }
        )
        $embedObject = @{
            description = $desc
            color = "851712"
            fields = $fieldArray
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
webHook()
```
<img src="https://cdn.discordapp.com/attachments/1009152912628404266/1120150260312977408/image.png" alt=""></p>
