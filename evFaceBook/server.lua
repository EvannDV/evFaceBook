ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)







----------ANNONCES







RegisterServerEvent("evAnnounce")
AddEventHandler("evAnnounce", function(param)
    print(fb, param)
    TriggerClientEvent("chatMessage", -1, "[Announcement]", {0,0,0}, param)
end)



RegisterCommand('EVxyz', function(source, args, rawCommand)
    local _source = source

    local src = source
    local msg2 = rawCommand:sub(8)
    local msg = rawCommand:sub(9)
    local args = msg

    local name = GetPlayerName(source)
    local xPlayers	= ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], '~b~FaceBook', "~r~Compte Privé", ''..msg..'', 'CHAR_FACEBOOK', 0)
    end

end, false)


RegisterCommand('EVwww', function(source, args, rawCommand)
    local _source = source

    local src = source
    local msg = rawCommand:sub(9)
    local args = msg

    local name = GetPlayerName(source)
    local xPlayers	= ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], '~b~FaceBook', "~g~Compte Public", ''..msg..'', 'CHAR_FACEBOOK', 0)
    end

end, false)







