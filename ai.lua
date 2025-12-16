--[[                       
                             
 ▄▄▄  ▄▄   ▄▄    ▄▄ ▄▄  ▄▄▄  
██▀██ ██   ██    ██ ██ ██▀██ 
██▀██ ██ ▄ ██▄▄▄ ▀███▀ ██▀██ 
                             
--]]

Opszones = { Reneopszone, Beirutopszone, Basselopszone, Hatayopszone }

function GetFriendlyZones(zones)
    local friendlyzones = {}
    for _, Opszone in ipairs(zones) do
        if Opszone:GetCoalition() == coalition.side.BLUE then
            table.insert(friendlyzones, Opszone)
        end
    end
    return friendlyzones
end

function GetClosestFriendlyZone(initialzone, friendlyzone)
    local initialpoint = initialzone:GetPointVec3()
    local friendlypoint = friendlyzone:GetPointVec3()
    local dist = initialpoint:DistanceToVec3(friendlypoint)

    if initialpoint == nil then return nil end
    if friendlypoint == nil then return nil end
    

    return dist
end

--[[                               
                                    
▄▄▄▄  ▄▄▄▄▄ ▄▄  ▄▄ ▄▄▄▄▄    ▄▄▄  ▄▄ 
██▄█▄ ██▄▄  ███▄██ ██▄▄    ██▀██ ██ 
██ ██ ██▄▄▄ ██ ▀██ ██▄▄▄   ██▀██ ██ 
                                    
--]]


-- Counterattack logic

function Reneopszone:OnAfterCapture(From, Event, To, Coalition)
    if Coalition == coalition.side.BLUE then

        local renebluecatimer = TIMER:New( function()
            
        end)

        renebluecatimer:Start(1, nil, 1600)
        
    end
    if Coalition == coalition.side.RED then
    end

end