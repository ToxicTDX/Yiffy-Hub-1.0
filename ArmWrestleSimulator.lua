_G.Lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

_G.Win = _G.Lib:Window("Yiffy Hub | Arm Wrestle Simulator",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)
local TweenService = game:GetService("TweenService")

-- Tabs
local T1 = _G.Win:Tab("Farming")
local T2 = _G.Win:Tab("Punching")


function PlayerProxy(playername)
    if playername == "all" then
    for _,v in pairs(game.Players:GetPlayers()) do
         return v.Name
    end
    else
    for i,v in pairs(game.Players:GetChildren()) do
        if (string.sub(string.lower(v.Name),1,string.len(playername))) == string.lower(playername) then
          return v.Name
        end
     end
    end
    end
-- Tabs 2
    local T3 = _G.Win:Tab("Wrestling")
    local T4 = _G.Win:Tab("Eggs & Pets")
    local T5 = _G.Win:Tab("Teleports")
    local T6 = _G.Win:Tab("Boosts")
    local T7 = _G.Win:Tab("Events")
    

    local Event_A3 = T7:Label("Event Eggs available #EGG_ERROR")
-- Event_A3:Set("","Event Eggs available")

local workspace = game:GetService("Workspace")
local npc = {}
local zone = {}
local egg = {}
local VSPLAYER = {}
local petIndex = {}
function AddTable(Table_V,LocalName)
for _,v in pairs(Table_V:GetChildren()) do
    table.insert(LocalName,v.Name)
end
end

AddTable(workspace.Zones,zone)

AddTable(workspace.Zones["1"].Interactables.ArmWrestling.NPC,npc)
AddTable(workspace.Zones["2"].Interactables.ArmWrestling.NPC,npc)
AddTable(workspace.Zones["3"].Interactables.ArmWrestling.NPC,npc)
AddTable(workspace.Zones["4"].Interactables.ArmWrestling.NPC,npc)
AddTable(workspace.Zones["1"].Interactables.ArmWrestling.PVP,VSPLAYER)
AddTable(workspace.Zones["2"].Interactables.ArmWrestling.PVP,VSPLAYER)
AddTable(workspace.Zones["3"].Interactables.ArmWrestling.PVP,VSPLAYER)
AddTable(workspace.Zones["4"].Interactables.ArmWrestling.PVP,VSPLAYER)
AddTable(workspace.PetFolder,petIndex)

local PetDetect = #petIndex

--[[
T1:AddToggle({
  Name = "Auto Click",
  Default = false,
  Callback = function(Value)
  _G.Toggle = Value
    while wait() do
      if _G.Toggle == false then break end
         
      end
  end    
})
--]]

function TPType(type,pos)
   if type == "tween" then
          TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), {CFrame = pos}):Play()
   end
   if type == "teleport" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
     end
end


function CreateDialogue(title,desc)
    _G.Lib:Notification(title, desc)
    end





local treadmill = {
    Tier = "Tier1",
    Number = "1"
}

T6:Dropdown("Select Boosts",{"Wins","Luck","Golden","Void"}, function(Value)
    _G.BoostPoison = Value
    end)


    T2:Dropdown("Select Zones", zone, function(Value)
        _G.zone_2 = Value
    treadmill.Number = Value
        end)

        T3:Dropdown("Select Zones", zone, function(Value)
            _G.zone_3 = Value
            end)

            T5:Dropdown("Select Zones", zone, function(Value)
                _G.zone_TP = Value
                end)

                T5:Dropdown("Select Teleportation Type", {"teleport","tween"}, function(Value)
                    _G.TP_TYPE = Value
                    end)

                    --[[
T6:AddButton({ -- fake API, THE ORIGINAL API IS IN THE UI
  Name = "Infinite Biceps / dumbells [ Patched ]",
  Callback = function()
      CreateDialogue("HTTP BAD GATEWAY (505)","this feature has been patched, our API is blocked by anti-cheat.")
  end    
})

T6:AddButton({ -- fake API, THE ORIGINAL API IS IN THE UI
  Name = "Infinite Wins / Trophy [ Patched ]",
  Callback = function()
      CreateDialogue("HTTP BAD GATEWAY (505)","this feature has been patched, our API is blocked by anti-cheat.")
  end    
})

T6:AddButton({ -- fake API, THE ORIGINAL API IS IN THE UI
  Name = "Infinite Knuckles [ Patched ]",
  Callback = function()
      CreateDialogue("HTTP BAD GATEWAY (505)","this feature has been patched, our API is blocked by anti-cheat.")
  end    
})

T6:AddButton({ -- fake API, THE ORIGINAL API IS IN THE UI
  Name = "Infinite Grips [ Patched ]",
  Callback = function()
      CreateDialogue("HTTP BAD GATEWAY (505)","this feature has been patched, our API is blocked by anti-cheat.")
  end    
})
--]]

T5:Button("Teleport!", function()
    if _G.zone_TP == "1" then
        TPType(_G.TP_TYPE,CFrame.new(-10326,4,34))
    end
     if _G.zone_TP == "2" then
        TPType(_G.TP_TYPE,CFrame.new(-10324,4,637))
     end
     if _G.zone_TP == "3" then
        TPType(_G.TP_TYPE,CFrame.new(11599,10,-19))
    end
     if _G.zone_TP == "4" then
        TPType(_G.TP_TYPE,CFrame.new(-10274,4,-817))
     end
    end)

    T2:Dropdown("Select Punching Tier", {"Tier1","Tier2","Tier3","Tier4","Tier5","Tier6"}, function(Value)
        treadmill.Tier = Value
        end)

        T2:Toggle("Auto Punch",false, function(Value)
            _G.Tm = Value
            while wait() do
              if _G.Tm == false then break end
                 game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.PunchBagService.RE.onGiveStats:FireServer(treadmill.Number,treadmill.Tier)
              end
            end)

            T3:Dropdown("Select NPC", npc, function(Value)
                _G.AI = Value
                end)


                T3:Toggle("Auto Wrestle",false, function(Value)
                    _G.JoinW = Value
                    while wait() do
                      if _G.JoinW == false then break end
                         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer(_G.AI,workspace.Zones[_G.zone_3].Interactables.ArmWrestling.NPC[_G.AI],_G.zone_3)
                      end
                    end)


            T3:Toggle("Auto Click",false, function(Value)
                _G.ClickW = Value
                while wait() do
                  if _G.ClickW == false then break end
                     game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
                  end
                end)

                T3:Dropdown("Select NPC", VSPLAYER, function(Value)
                    _G.TABLE_VSPLAYER = Value
                    end)

                    T3:Toggle("Automatically Enter Tables",false, function(Value)
                        _G.ENTERTABLE = Value
                        while wait() do
                          if _G.ENTERTABLE == false then break end
                             game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onEnterTable:FireServer(workspace.Zones[_G.zone_3].Interactables.ArmWrestling.PVP[_G.TABLE_VSPLAYER])
                          end
                        end)

                        T3:Toggle("Auto Click (Players)",false, function(Value)
                            _G.CLICKVSPLAYER = Value
                            while wait() do
                                if _G.CLICKVSPLAYER == false then break end
                                    game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
                                end
                            end)

                            local dislist = {"=[ Zone 1 ]=","Earth","Icy","Blackhole","Lava","=[ Zone 2 ]=","Molten","Crystal","Solar","Ice","Burning","Moon","=[ Zone 3 ]=","Coconut","Palm","Treasure","Poseidon","KingFish","Clam"}

                            T4:Dropdown("Select Eggs", dislist, function(Value)
                                _G.Egg = Value
                                end)


                                --[[
local common = {
      mouse = false,
      squirrel = false,
      cat = false
}

T4:AddToggle({
  Name = "Blacklist common pet",
  Default = false,
  Callback = function(Value)
    common.mouse = Value
    common.squirrel = Value
    common.cat = false
  end    
})

local uncommon = {
      dog = false,
      cow = false,
      deer = false,
      parrot = false
}

T4:AddToggle({
  Name = "Blacklist uncommon pet",
  Default = false,
  Callback = function(Value)
    uncommon.dog = Value
    uncommon.cow = Value
    uncommon.deer = Value
    uncommon.parrot = Value
  end    
})

local rare = {
      fox = false,
      wolf = false,
}

T4:AddToggle({
  Name = "Blacklist rare pet",
  Default = false,
  Callback = function(Value)
    rare.fox = Value
  end    
})

local legendary = {
      mouse = false,
      bear = false,
      slime = false,
      grassmage = false,
      monkey = false,
      tiger = false,
      unicorn = false,
}

T4:AddToggle({
  Name = "Blacklist legendary pet",
  Default = false,
  Callback = function(Value)
    legendary.mouse = Value
    legendary.bear = Value
    legendary.slime = Value
    legendary.grassmage = Value
    legendary.monkey = Value
    legendary.tiger = Value
  end    
})

local mythical = {
      watermage = false,
      elephant = false,
      astra = false,
}

T4:AddToggle({
  Name = "Blacklist mythical pet",
  Default = false,
  Callback = function(Value)
    mythical.watermage = Value
    mythical.elephant = Value
  end    
})

local unknown = {
      magicmage = false,
      spooky = false,
      quasar = false,
      axeli = false,
}

T4:AddToggle({
  Name = "Blacklist Unknown pet (Blackhole Egg)",
  Default = false,
  Callback = function(Value)
    unknown.magicmage = Value
    unknown.spooky = Value
  end    
})
--]]

T4:Toggle("Auto Hatch",false, function(Value)
    _G.CLICKVSPLAYER = Value
    _G.Balls = Value
    while wait() do
      if _G.Balls == false then break end
       --[[local args = {
           [1] = _G.Egg,
           [2] = {
              ["Fox"] = rare.fox,
              ["Slime"] = legendary.slime,
              ["Bear"] = legendary.bear,
              ["Deer"] = uncommon.deer,
              ["Squirrel"] = common.squirrel,
              ["WaterMage"] = mythical.watermage,
              ["GrassMage"] = legendary.grassmage,
              ["Spooky"] = unknown.spooky,
              ["MagicMage"] = unknown.magicmage,
              ["Monkey"] = legendary.monkey,
              ["Parrot"] = uncommon.parot,
              ["Tiger"] = legendary.tiger,
              ["Elephant"] = mythical.elephant,
              ["Cat"] = common.cat,
              ["Dog"] = uncommon.dog,
              ["Cow"] = uncommon.cow,
              ["Mouse"] = legendary.mouse,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              [""] = ,
              
          }
      }
--]]
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EggService.RF.purchaseEgg:InvokeServer(_G.Egg,{})
    end
end)

T4:Toggle("Auto Gold (Use Private Servers)",false, function(Value)
    _G.GoldPet = Value
    while wait() do
      if _G.GoldPet == false then break end
        local PatchGold = petIndex[math.random(1, #petIndex)]
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.PetService.RF.goldify:InvokeServer({PatchGold,PatchGold,PatchGold,PatchGold,PatchGold})
     end
    end)


T4:Toggle("Auto Craft (Use Private Servers)",false, function(Value)
  _G.Crafter = Value
    while wait() do
      if _G.Crafter == false then break end
        local MasterCraft = petIndex[math.random(1, #petIndex)]
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.PetService.RF.craft:InvokeServer(MasterCraft,true)
      end
    end)

--]]

T4:Toggle("Always Equip Best",false, function(Value)
  _G.EB = Value
    while wait() do
      if _G.EB == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.PetService.RF.equipBest:InvokeServer(game:GetService("Players").LocalPlayer)
      end
    end)


    local weight = {"1Kg","2Kg","3Kg","4Kg","5Kg","10Kg","15Kg","20Kg","25Kg","50Kg","100Kg","250Kg"}


    --[[
T1:AddDropdown({
   Name = "select weight",
   Default = "1Kg",
   Options = weight,
   Callback = function(Value)
     _G.Prototype_A1 = Value
     _G.Prototype_A2 = Value
   end    
})
--]]

T1:Toggle("Auto Click",false, function(Value)
       _G.Click = Value
          while wait() do
         if _G.Click == false then break end
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onClick:FireServer()
    end
    end)

    T1:Toggle("Auto Spin",false, function(Value)
      _G.Spin = Value
      while wait() do
        if _G.Spin == false then break end
           game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.SpinService.RE.onSpinRequest:FireServer()
        end
   end)

   T1:Toggle("Auto Reb",false, function(Value)
    _G.Rbr = Value
    while wait() do
      if _G.Rbr == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.RebirthService.RE.onRebirthRequest:FireServer()
      end
 end)

 T1:Toggle("Auto Claim Gifts",false, function(Value)
  _G.Gift = Value
  while wait() do
    if _G.Gift == false then break end
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("1")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("2")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("3")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("4")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("5")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("6")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("7")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("8")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("9")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("10")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("11")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("12")
    end
end)

T1:Toggle("Spam Trades",false, function(Value)
  _G.SpamTrade = Value
  while wait() do
    if _G.SpamTrade == false then break end
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TradingService.RF.sendTradeRequest:InvokeServer(game:GetService("Players")[PlayerProxy("all")])
    end
end)

--[[
T1:AddToggle({
  Name = "Auto Equip Dumbells",
  Default = false,
  Callback = function(Value)
  _G.Dmb = Value
    while wait() do
      if _G.Dmb == false then break end
        if _G.JoinW == false and _G.ClickW == false then
           game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onGuiEquipRequest:FireServer(_G.zone_1,"Dumbells",_G.Prototype_A1)
        end
      end
  end    
})

T1:AddToggle({
  Name = "Auto Equip Grips",
  Default = false,
  Callback = function(Value)
  _G.Grips = Value
    while wait() do
      if _G.Grips == false then break end
         if _G.JoinW == false and _G.ClickW == false then
           game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onGuiEquipRequest:FireServer(_G.zone_1,"Grips",_G.Prototype_A2)
        end
      end
  end    
})
--]]

T6:Toggle("Use Selected Boost",false, function(Value)
  _G.UseBoost = Value
  while wait() do
    if _G.UseBoost == false then break end
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer(_G.BoostPoison)
    end
end)

T6:Toggle("Use All Boosts",false, function(Value)
  _G.UseAllBoost = Value
  while wait() do
    if _G.UseAllBoost == false then break end
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer("Luck")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer("Golden")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer("Void")
       game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.BoostService.RE.useBoost:FireServer("Wins")
    end
end)

--[[
World 1: 
Bully
Teacher
GymRat
MafiaBoss
Champion
]]

local EventSpeed = 0

T7:Slider("Farming Speed",0,20,1, function(Value)
  EventSpeed = tonumber(Value)
  end)

  T7:Toggle("Farm Zone 2",false, function(Value)
    _G.Event_AV1 = Value
    while wait() do
      if _G.Event_AV1 == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("ScrapTrader",workspace.Zones["2"].Interactables.ArmWrestling.NPC["ScrapTrader"],2)
         wait(EventSpeed + 1)
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("CyberCop",workspace.Zones["2"].Interactables.ArmWrestling.NPC["CyberCop"],2)
         wait(EventSpeed + 2)
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("SlicerAssassin",workspace.Zones["2"].Interactables.ArmWrestling.NPC["SlicerAssassin"],2)
      end
  end)
  

  T7:Toggle("Farm Zone 3",false, function(Value)
    _G.Event_AV1 = Value
    while wait() do
      if _G.Event_AV1 == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("KrakenBoss",workspace.Zones["3"].Interactables.ArmWrestling.NPC["KrakenBoss"],3)
      end
  end)
  
  T7:Toggle("Auto Click",false, function(Value)
    _G.Event_AV2 = Value
    while wait() do
      if _G.Event_AV2 == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
      end
  end)


  T7:Toggle("Auto Claim Event Eggs",false, function(Value)
    _G.Event_AV3 = Value
    while wait() do
      if _G.Event_AV3 == false then break end
         game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EventService.RF.ClaimEgg:InvokeServer()
      end
  end)

  while wait() do
    Event_A3:Set(tostring(game.Players.LocalPlayer.PlayerGui.GameUI.Menus.Event.Amount.Text),"Event Eggs available")
    end

    if PetDetect > 3 then
      Detection_A1:Set("The number of Pets exceeds 3 \nplease go to the private server \nto use this feature.","Pet detection (in workspace)")
      Detection_A2:Set("The number of Pets exceeds 3 \nplease go to the private server \nto use this feature.","Pet detection (in workspace)")
      else
      Detection_A1:Set(tostring(PetDetect) .. " (Private Server)","Pet detection (in workspace)")
      Detection_A2:Set(tostring(PetDetect) .. " (Private Server)","Pet detection (in workspace)")
      end
