
RegisterCommand('copycoords', function(source, args, raw)
    if IsPlayerAceAllowed(source, 'command.copycoords') == 1 then 
       TriggerClientEvent('grm-coords:toggle', source, true) 
    end
end, true)