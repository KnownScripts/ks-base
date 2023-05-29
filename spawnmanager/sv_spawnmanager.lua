QBCore.SpawnManager = {}

RegisterServerEvent('QB:spawnInitialized')
AddEventHandler('QB:spawnInitialized', function()
    local src = source
    TriggerClientEvent('QB:spawnInitialized', src)
end)