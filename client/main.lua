CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local cfg = Config and Config.DisableShootInVehicle

        if cfg and cfg.Enabled and IsPedInAnyVehicle(ped, false) then
            local veh = GetVehiclePedIsIn(ped, false)
            local driverPed = GetPedInVehicleSeat(veh, -1)

            local apply = false
            if cfg.Mode == "all" then
                apply = true
            elseif cfg.Mode == "driver" then
                apply = (ped == driverPed)
            end

            if apply then
                local weapon = GetSelectedPedWeapon(ped)
                local armed = (weapon ~= `WEAPON_UNARMED`)

                if armed then
                    -- hard lock drive-by + firing (ONLY when armed)
                    SetPlayerCanDoDriveBy(PlayerId(), false)
                    DisablePlayerFiring(ped, true)

                    -- block aim/shoot controls (ONLY when armed)
                    DisableControlAction(0, 24, true)   -- attack
                    DisableControlAction(0, 25, true)   -- aim
                    DisableControlAction(0, 68, true)   -- vehicle aim
                    DisableControlAction(0, 69, true)   -- vehicle attack
                    DisableControlAction(0, 70, true)   -- vehicle attack 2
                    DisableControlAction(0, 91, true)   -- passenger aim
                    DisableControlAction(0, 92, true)   -- passenger attack
                    DisableControlAction(0, 257, true)  -- attack2

                    -- prevent weapon wheel / switching (ONLY when armed)
                    DisableControlAction(0, 37, true)   -- weapon wheel
                    DisableControlAction(0, 157, true)
                    DisableControlAction(0, 158, true)
                    DisableControlAction(0, 159, true)
                    DisableControlAction(0, 160, true)
                    DisableControlAction(0, 161, true)
                    DisableControlAction(0, 162, true)
                    DisableControlAction(0, 163, true)
                    DisableControlAction(0, 164, true)
                    DisableControlAction(0, 165, true)

                    -- force unarmed so no one can keep a weapon out in vehicles
                    SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
                    SetPedCurrentWeaponVisible(ped, false, true, true, true)
                else
                    -- unarmed: allow normal aim (finger)
                    SetPlayerCanDoDriveBy(PlayerId(), true)
                end
            else
                SetPlayerCanDoDriveBy(PlayerId(), true)
            end
        else
            SetPlayerCanDoDriveBy(PlayerId(), true)
        end

        Wait(0)
    end
end)
