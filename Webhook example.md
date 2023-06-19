<h1> Basic webhook </h1>

<code>webhook = ""

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
webHook("This is webhook")</code>
