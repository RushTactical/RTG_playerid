-- Register NUI Callback
RegisterNUICallback("get_player_id", function(data, cb)
    local playerId = GetPlayerServerId(PlayerId())
    cb(playerId)
end)

-- Function to update NUI with player ID
function updatePlayerId()
    SendNUIMessage({
        type = "updatePlayerId",
        playerId = GetPlayerServerId(PlayerId())
    })
end

-- Main Loop
Citizen.CreateThread(function()
    while true do
        -- Update player ID every second (you can adjust the timing as needed)
        updatePlayerId()
        Citizen.Wait(1000)
    end
end)
