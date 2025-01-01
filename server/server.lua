function SendNotification(playerId, title, message, time, notifyType)
    if playerId then
        TriggerClientEvent('88studio-ui_kit:SendAlert', playerId, title, message, time, notifyType)
    else
        TriggerClientEvent('88studio-ui_kit:SendAlert', -1, title, message, time, notifyType)
    end
end

RegisterCommand('servernotif', function(source, args)
    local notifyType = args[1] or 'info'
    local message = table.concat(args, ' ', 2)
    if source == 0 then
        SendNotification(nil, 'SERVER MESSAGE', message, 5000, notifyType)
    else
        SendNotification(source, 'PLAYER MESSAGE', message, 5000, notifyType)
    end
end, false)

exports('SendNotification', function(playerId, title, message, time, notifyType)
    SendNotification(playerId, title, message, time, notifyType)
end)
