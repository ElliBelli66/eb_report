RegisterCommand('report', function()

    local input = lib.inputDialog('Report', {
        {type = 'input', label = 'Din Discord', description = 'Indsæt dit discord navn her', required = true},
        {type = 'input', label = 'Spiller ID', description = 'Indsæt ID på spilleren du ønsker at rapotere', required = true},
        {type = 'input', label = 'Begrundelse', description = 'Indsæt begrundelse for din rapotering', required = true},
        {type = 'checkbox', label = 'Er du sikker på at du ønsker at rapotere denne spiller?', required = true}
    })

    if not input then return end

    local sender = input[1]
    local id = tonumber(input[2])
    local reason = input[3]

    TriggerServerEvent('eb:send_report', sender, id, reason)

end)