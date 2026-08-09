RegisterNetEvent('rd-business:sendnotifcation')
AddEventHandler('rd-business:sendnotifcation', function(Label, Text, status)
    SendNUIMessage({
        display = true,
        Label = Label,
        Text = Text,
        status = status,
    })
end)

RegisterNUICallback('closeUI', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)