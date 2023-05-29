QBCore.BlipManager = QBCore.BlipManager or {}
QBCore.Blips = QBCore.Blips or {}

function QBCore.BlipManager.CreateBlip(self, id, data)
    local blip = AddBlipForCoord(data.x, data.y, data.z)

    if data.sprite then SetBlipSprite(blip, data.sprite) end
    if data.range then SetBlipAsShortRange(blip, data.range) else SetBlipAsShortRange(blip, true) end
    if data.color then SetBlipColour(blip, data.color) end
    if data.display then SetBlipDisplay(blip, data.display) end
    if data.playername then SetBlipNameToPlayerName(blip, data.playername) end
    if data.showcone then SetBlipShowCone(blip, data.showcone) end
    if data.secondarycolor then SetBlipSecondaryColour(blip, data.secondarycolor) end
    if data.friend then SetBlipFriend(blip, data.friend) end
    if data.mission then SetBlipAsMissionCreatorBlip(blip, data.mission) end
    if data.route then SetBlipRoute(blip, data.route) end
    if data.friendly then SetBlipAsFriendly(blip, data.friendly) end
    if data.routecolor then SetBlipRouteColour(blip, data.routecolor) end
    if data.scale then SetBlipScale(blip, data.scale) else SetBlipScale(blip, 0.8) end

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.name)
    EndTextCommandSetBlipName(blip)

    QBCore.Blips[id] = {blip = blip, data = data}
end

function QBCore.BlipManager.RemoveBlip(self, id)
    local blip = QBCore.Blips[id]
    if blip then RemoveBlip(blip.blip) end
    QBCore.Blips[id] = nil
end

function QBCore.BlipManager.HideBlip(self, id, toggle)
    local blip = QBCore.Blips[id]
    if not blip then return end
    if toggle then SetBlipAlpha(blip, 0) else SetBlipAlpha(blip, 255) end
end

function QBCore.BlipManager.GetBlip(self, id)
    local blip = QBCore.Blips[id]
    if not blip then return false end
    return blip
end