RegisterServerEvent("QB:sv:player_control_set")
AddEventHandler("QB:sv:player_control_set", function(controlsTable)
    local src = source
    QBCore.DB:UpdateControls(src, controlsTable, function(UpdateControls, err)
        if UpdateControls then
            -- we are good here.
        end
    end)
end)

RegisterServerEvent("QB:sv:player_controls")
AddEventHandler("QB:sv:player_controls", function()
    local src = source
    QBCore.DB:GetControls(src, function(loadedControls, err)
        if loadedControls ~= nil then 
            TriggerClientEvent("QB:cl:player_control", src, loadedControls) 
        else 
            TriggerClientEvent("QB:cl:player_control",src, nil) print('controls fucked') 
        end
    end)
end)
