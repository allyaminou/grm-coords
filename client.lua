local toggle = false

RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false, false)
    toggle = false
end)

RegisterNetEvent('grm-coords:toggle', function(bool)
    SetNuiFocus(bool, bool)
    toggle = bool

    local player = PlayerPedId()
    local coords = GetEntityCoords(player) + 0.5
    local heading = GetEntityHeading(player)

    local string3 = ('vec3(%s, %s, %s)'):format(coords.x, coords.y, coords.z)
    local string4 = ('vec4(%s, %s, %s, %s)'):format(coords.x, coords.y, coords.z, heading)
    local stringxyz = ('{x = %s, y = %s, z = %s}'):format(coords.x, coords.y, coords.z)

    SendNUIMessage({
        action = bool and 'open' or 'close',
        vector3 = string3,
        vector4 = string4,
        xyz = stringxyz,
        heading = heading
    })
end)