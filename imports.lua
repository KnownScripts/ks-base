--YOU CAN USE IT IN UNDER FXMANIFEST FILE IF YOU DONT WANT TO USE EXPORTS!!

function GetCoreObject()
    return QBCore
end

exports('GetCoreObject', GetCoreObject)

QBCore = exports['Framework']:GetCoreObject()
