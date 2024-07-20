Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        local hour = GetClockHours()
        local minute = GetClockMinutes()

        TriggerServerEvent('tobi_SCT:getIngameTime', hour, minute)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1500)
        local hour = GetClockHours()
        local minute = GetClockMinutes()

        TriggerServerEvent('tobi_SCT:getIngameTime1', hour, minute)
    end
end)

RegisterNetEvent('tobi_SCT:client:notif', function()
    exports["npwd"]:createSystemNotification({
        uniqId = "shopnotif",
        content = Config.NotificationMessage,
        secondaryTitle = Config.NotificationTitle,
        keepOpen = false,
        duration = Config.NotificationDuration,
    })
end)
