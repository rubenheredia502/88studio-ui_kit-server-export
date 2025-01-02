function SendNotification(playerId, title, message, time, notifyType)
    if playerId then
        TriggerClientEvent('88studio-ui_kit:SendAlert', playerId, title, message, time, notifyType)
    else
        TriggerClientEvent('88studio-ui_kit:SendAlert', -1, title, message, time, notifyType)
    end
end

exports('SendNotification', function(playerId, title, message, time, notifyType)
    SendNotification(playerId, title, message, time, notifyType)
end)
