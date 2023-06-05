local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/karotquipu/MTScript/main/MT_Gui_OPL_Def.lua')))()
local Player = game.Players.LocalPlayer
local Window = OrienLib:MakeWindow({Name = "Key System", HidenPrenium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
    Name = "Logged In !",
Content = "You are logged in as "..Player.Name..-.-
Image == "rbxassetid://4483345998",
Time = 5
})

_G.Key = "MTopl987"
_G.Keyinput = "string"

function MakeScriptHub ()
    local Window = OrienLib:MakeWindow({Name = "Script Hub", HidenPrenium = false, SaveConfig = true, IntroEnabled = true, IntroText"Script Hub"})
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
    Content = "You have entered the coorect key!",
    Image == "rbxassetid://4483345998",
    Time = 5
    }) 
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
    Content = "You have entered the incorect key!"
   , Image == "rbxassetid://4483345998",
    Time = 5
    }) 
end


local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly= false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
       G.KeyInput = Value
    end
})

Tab:AddButton({
	Name = "Check Key !",
	Callback = function()
      		if _G.Keyinput == _G.Key then
         MakeScriptHub()
         CorrectKeyNotification()
            else
                IncorrectKeyNotification()
            end       
  	end    
})
