RegisterCommand("fb", function(source, args, rawcommand)
    menu()
    print("test 10-9")
end, false)


RegisterCommand("evAnnounce", function(source, args)
    TriggerServerEvent("evAnnounce", table.concat(args, " "))
end)




function menu()

    local evMenu = RageUI.CreateMenu("FaceBook", nil)
    local evSubMenu = RageUI.CreateSubMenu(evMenu, "FaceBook", "connexion")

    RageUI.Visible(evMenu, not RageUI.Visible(evMenu))


    while evMenu do
        
        Citizen.Wait(0)

        RageUI.IsVisible(evMenu,true,true,true,function()

            RageUI.Separator("↓     Actions     ↓")
        
            RageUI.ButtonWithStyle("~g~Compte Public", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    RageUI.Visible(evSubMenu, not RageUI.Visible(evSubMenu))    
                    print("^2Connexion à ^4FaceBook ...")
                    while evSubMenu do
                        Wait(0)
                        RageUI.IsVisible(evSubMenu, true, true, true, function()
                            RageUI.ButtonWithStyle("Nom d'utilisateur", fb, {RightLabel = fb}, true, function(Hovered, Active, Selected)
                                if Selected then
                                    fb = KeyboardInput("Votre Nom", "", 20)
                                end
                            end)

                            RageUI.ButtonWithStyle("Votre Message", fb, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                                if Selected then
                                    local ev88 = "//"
                                    local fb2 = KeyboardInput("Votre Message", "", 75)
                                    ExecuteCommand("EVwww "..ev88..fb.."  --->  "..fb2)
                                end
                            end)
                        end)

                    
                        
                    end
                end
            end)  



            RageUI.ButtonWithStyle("~r~Anonyme", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    local ev99 = "//"
                    local anomsg = KeyboardInput("Votre Message", "", 100)
                    ExecuteCommand("EVxyz "..ev99..anomsg)
                end
            end)  

        
        end, function()
        end)

        if not RageUI.Visible(evMenu) then
            evMenu=RMenu:DeleteType("Delete", true)
        end

    end

end




------------------Keyboard INPUT


KeyboardInput = function(TextEntry, ExampleText, MaxStringLenght)
    AddTextEntry('FMMC_KEY_TIP1', TextEntry) 
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
    blockinput = true

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do 
        Citizen.Wait(0)
    end
        
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult() 
        Citizen.Wait(500) 
        blockinput = false
        return result 
    else
        Citizen.Wait(500) 
        blockinput = false 
        return nil 
    end
end