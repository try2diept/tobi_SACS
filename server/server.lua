local ingameTime = {hour = 0, minute = 0}
local doorLocked = false
local lockChanged = false
local notificationSent = false

RegisterNetEvent('tobi_SCT:getIngameTime')
AddEventHandler('tobi_SCT:getIngameTime', function(hour, minute)
    ingameTime.hour = hour
    ingameTime.minute = minute

    if hour == Config.LockHour and not doorLocked and not lockChanged then
        for _, doorID in ipairs(Config.DoorIDs) do
            exports.ox_doorlock:setDoorState(doorID, 1)
        end
        doorLocked = true
        lockChanged = true
    elseif hour == Config.UnlockHour and doorLocked and not lockChanged then
        for _, doorID in ipairs(Config.DoorIDs) do
            exports.ox_doorlock:setDoorState(doorID, 0)
        end
        doorLocked = false
        lockChanged = true
    elseif minute ~= 0 then
        lockChanged = false
    end
end)

RegisterNetEvent('tobi_SCT:getIngameTime1')
AddEventHandler('tobi_SCT:getIngameTime1', function(hour, minute)
    if hour == Config.NotificationHour and minute == Config.NotificationMinute and not notificationSent then
        TriggerClientEvent("tobi_SCT:client:notif", -1)
        notificationSent = true
    elseif hour ~= Config.NotificationHour or minute ~= Config.NotificationMinute then
        notificationSent = false
    end
end)
