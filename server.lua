QBCore = exports['qb-core']:GetCoreObject()
local Usage = {}
RegisterCommand('open', function(source)
    Player = QBCore.Functions.GetPlayer(source)
    job = Player.PlayerData.job.name
    grade = Player.PlayerData.job.grade.level
    local currentTime = GetGameTimer()  
    local lastUsage = Usage[source] or 0
    local cooldown = Config.Cooldown * 1000 
    if currentTime - lastUsage < cooldown then
        local timeLeft = (cooldown - (currentTime - lastUsage)) / 1000  
        TriggerClientEvent('okokNotify:Alert', source, 'L3ECHRANE SYSTEM', "TSNA "..math.ceil(timeLeft).."s 3AD DIRHA", 3000, 'info', false)
        return
    end
    if Config.Jobs[job] and grade >= Config.Jobs[job].rank then
        local Label = Config.Jobs[job].label
        local open_text = Config.Jobs[job].open_text
        Usage[source] = currentTime
        TriggerClientEvent('rd-business:sendnotifcation', -1, Label, open_text, 'open')
        TriggerClientEvent('okokNotify:Alert', source, 'L3ECHRANE SYSTEM', ""..Label.." IS OPEN NOW", 3000, 'success', false)
    else
        TriggerClientEvent('okokNotify:Alert', source, 'L3ECHRANE SYSTEM', "You don't have permission to use this command", 3000, 'error', false)
    end
end)
RegisterCommand('close', function(source)
    Player = QBCore.Functions.GetPlayer(source)
    job = Player.PlayerData.job.name
    grade = Player.PlayerData.job.grade.level
    local currentTime = GetGameTimer()  
    local lastUsage = Usage[source] or 0
    local cooldown = Config.Cooldown * 1000  
    if currentTime - lastUsage < cooldown then
        local timeLeft = (cooldown - (currentTime - lastUsage)) / 1000  
        TriggerClientEvent('okokNotify:Alert', source, 'L3ECHRANE SYSTEM', "TSNA "..math.ceil(timeLeft).."s 3AD DIRHA", 3000, 'info', false)
        return
    end
    if Config.Jobs[job] and grade >= Config.Jobs[job].rank then
        local Label = Config.Jobs[job].label
        local close_text = Config.Jobs[job].close_text
        Usage[source] = currentTime  
        TriggerClientEvent('rd-business:sendnotifcation', -1, Label, close_text, 'close')
        TriggerClientEvent('okokNotify:Alert', source, 'L3ECHRANE SYSTEM', ""..Label.." IS CLOSED", 3000, 'success', false)
    else
        TriggerClientEvent('okokNotify:Alert', source, 'L3ECHRANE SYSTEM', "You don't have permission to use this command", 3000, 'error', false)
    end
end)

TriggerEvent('chat:addSuggestion', '/open', 'open your business')
TriggerEvent('chat:addSuggestion', '/close', 'close your business')