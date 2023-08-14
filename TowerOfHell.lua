_G.Lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
_G.Win = _G.Lib:Window("Yiffy Hub | Tower Of Hell",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local T1 = _G.Win:Tab("Main")
local T2 = _G.Win:Tab("Message Bot")
local T3 = _G.Win:Tab("Misc")

T3:Button("Ctrl Click TP", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/rS2DBx4Y", true))()
  end)

  T3:Button("Give All Tools (Risky)", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/rS2DBx4Y", true))()
    end)

    T1:Dropdown("Select Teleportation Type",{"Teleport","Tweening"}, function(Value)
      FunctionType = Value
      end)

      T1:Button("Teleport To End", function()
        if FunctionType == "Teleport" then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.tower.sections.finish.exit.ParticleBrick.CFrame
          end
              if FunctionType == "Tweening" then
          local TweenService = game:GetService("TweenService")
          local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
          
          
          {CFrame = CFrame.new(game.workspace.tower.sections.finish.exit.ParticleBrick.CFrame)}):Play()
          end
        end)

        T1:Button("God Mode", function()
          loadstring(game:HttpGet("https://pastebin.com/raw/MSZAznxp", true))()
          end)
          
          T1:Button("God Mode", function()
            loadstring(game:HttpGet("https://pastebin.com/raw/MSZAznxp", true))()
            end)
            T3:Button("Infinite Jumping", function()
              loadstring(game:HttpGet("https://pastebin.com/raw/WUquqYN0", true))()
              end)
              T3:Button("Disable Anti-Cheat", function()
                loadstring(game:HttpGet("https://pastebin.com/raw/BMGbkQ71", true))()
                end)
                T3:Button("Noclip B to toggle", function()
                  loadstring(game:HttpGet("https://pastebin.com/raw/Czgaerid", true))()
                  end)
                  T2:Button("Send Bot Messages", function()
                    loadstring(game:HttpGet("https://pastebin.com/raw/sqkeaRjG", true))()
                    end)
            
                    if getconnections then
                      for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
                        v:Disable()
                      end
                    end
