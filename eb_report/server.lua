RegisterNetEvent('eb:send_report', function(sender, id, reason)

    local embed = {
        {
            ["color"] = 2891684,
            ["title"] = 'REPORT',
            ["description"] = '' .. sender .. ' har rapporteret ID ' .. id .. ' med begrundelsen: ' .. reason .. '.',
            ["footer"] = {
                ["text"] = 'EB-Report System',
            },
        }
    }

  PerformHttpRequest('https://discord.com/api/webhooks/1125042674643251251/neu5iRfA_NINhtTsQ0jk5yDHKneRMlswBYLXlzdaDOye4wgNJxbgDmE2EsWX2DKw8i5S', function(err, text, headers) end, 'POST', json.encode({embeds = embed}), { ['Content-Type'] = 'application/json' })

end)