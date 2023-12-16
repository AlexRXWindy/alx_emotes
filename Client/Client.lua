opened = false;


local function DisableDisplayControlActions() 
    DisableControlAction(0, 1, true) -- disable mouse look
    DisableControlAction(0, 2, true) -- disable mouse look
    DisableControlAction(0, 3, true) -- disable mouse look
    DisableControlAction(0, 4, true) -- disable mouse look
    DisableControlAction(0, 5, true) -- disable mouse look
    DisableControlAction(0, 6, true) -- disable mouse look
    DisableControlAction(0, 24, true) -- disable mouse look
    DisableControlAction(0, 25, true) -- disable mouse look
    DisableControlAction(0, 106, true) -- disable mouse look
    DisableControlAction(0, 263, true) -- disable melee
    DisableControlAction(0, 264, true) -- disable melee
    DisableControlAction(0, 257, true) -- disable melee
    DisableControlAction(0, 140, true) -- disable melee
    DisableControlAction(0, 141, true) -- disable melee
    DisableControlAction(0, 142, true) -- disable melee
    DisableControlAction(0, 143, true) -- disable melee
    DisableControlAction(0, 177, true) -- disable escape
    DisableControlAction(0, 200, true) -- disable escape
    DisableControlAction(0, 202, true) -- disable escape
    DisableControlAction(0, 322, true) -- disable escape
    DisableControlAction(0, 245, true) -- disable chat
end

RegisterCommand('panelemotes', function(source, args)
    SetNuiFocus(true, true)
    SetNuiFocusKeepInput(true)
    opened = true
    local Table = {
        { label = 'Gestos', sub = GetEmoteTable(RP.Emotes, 'e') }, 
        { label = 'Formas de caminar', sub = GetEmoteTable(RP.Walks, 'walk') },   
        { label = 'Expresiones', sub = GetEmoteTable(RP.Expressions, 'mood') },   
        { label = 'Compartidas', sub = GetEmoteTable(RP.Shared, 'nearby') }, 
        { label = 'Bailes', sub = GetEmoteTable(RP.Dances, 'e') }, 
        { label = 'Objetos', sub = GetEmoteTable(RP.PropEmotes, 'e') }, 
    }

    SendNUIMessage({
        action = 'open', 
        list = Table,
        opened = true
    })

    opened = true

    CreateThread(function()
        while opened do
            DisableDisplayControlActions()
            Wait(1)
        end 
    end)
end)

RegisterNUICallback("close", function()
    SendNUIMessage({
        action = "HideEmotes",
    })
    SetNuiFocus(false,false)
    print('close')
    opened = false
end)

RegisterNUICallback("exit" , function(data, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = 'exit'
    })
    opened = false
end)

function GetEmoteTable(Table, Prefix)
    local Emotes = {}

    if Prefix ~= 'walk' and 'mood' then 
        for i,v in pairs(Table) do 
            table.insert(Emotes, { label = v[3], value = i, prefix = Prefix })
        end
    else
        for i,v in pairs(Table) do 
            table.insert(Emotes, { label = i, value = i, prefix = Prefix })
        end
    end

    return Emotes
end 

RegisterNUICallback('execute', function(data)       
    ExecuteCommand(data.anim.prefix..' '..data.anim.value)
end)

RegisterKeyMapping("panelemotes", "Abrir animaciones", "keyboard", Config.MenuKeybind)

