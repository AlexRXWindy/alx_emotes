if Config.RagdollEnabled then
    RegisterCommand('suelo', function() Ragdoll() end, false)
    RegisterCommand('levantarse', function() StopRagdoll() end, false)
    RegisterKeyMapping("suelo", "Ragdoll your character", "keyboard", Config.RagdollKeybind)

    local stop = true
    function Ragdoll()
        if IsInAnimation then return end

        local ped = PlayerPedId()
        if not IsPedOnFoot(ped) then return end

        if Config.RagdollAsToggle then
            stop = not stop
        else
            stop = false
        end

        while not stop do
            SetPedToRagdoll(ped, 1000, 1000, 0, false, false, false)
            Wait(0)
        end
    end

    function StopRagdoll()
        if Config.RagdollAsToggle then return end
        stop = true
    end
end