local a=game:GetService('Players').LocalPlayer;local b=a.Character;local c=b.HumanoidRootPart;local d=tick()local e=loadstring(game:HttpGet("https://pastebin.com/raw/KnAKzUcv"))()local f="BloodTheme"local g=e.CreateLib("Universal Tycoon UI",f)local h=g:NewTab("Tycoon Toggleables:")local i=h:NewSection("Toggleables:")i:NewToggle("Automatically collect money","Auto collects money.",function(j)if j then _G.autoCollect=true;while _G.autoCollect do wait(.5)for k,l in pairs(game.Workspace:GetDescendants())do if l:IsA("Part")and l.Name:match("Giver")then l.CFrame=c.CFrame;l.CanCollide=false;l.Transparency=1;l.Material="Plastic"end end end else _G.autoCollect=false end end)i:NewToggle("Autoclick Dropper","Automatically clicks dropper must have a clickdetector.",function(j)if j then _G.autoclick=true;while _G.autoclick do wait(0.1)for k,l in pairs(game.Workspace:GetDescendants())do if l.Name:match("Clicker")and l:IsA("Part")then fireclickdetector(l.ClickDetector)end end end else _G.autoclick=false end end)i:NewToggle("Auto-Get-Crates","Automatically collects crates.",function(j)if j then _G.autoCrates=true;if _G.CreditAutofarm==true then for k,l in pairs(game.Workspace:GetDescendants())do if l:IsA("TouchTransmitter")then firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,l,0)end end end else print("Toggle Off")end end)local h=g:NewTab("Hitbox/ESP:")local i=h:NewSection("xdnt3.0")i:NewToggle("Hitbox Expander","Puts a bigger hitbox on Players.",function(j)if j then _G.HeadSize=20;_G.Disabled=true;game:GetService('RunService').RenderStepped:connect(function()if _G.Disabled then for m,l in next,game:GetService('Players'):GetPlayers()do if l.Name~=game:GetService('Players').LocalPlayer.Name then pcall(function()l.Character.HumanoidRootPart.Size=Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)l.Character.HumanoidRootPart.Transparency=0.7;l.Character.HumanoidRootPart.BrickColor=BrickColor.new("Really red")l.Character.HumanoidRootPart.Material="Neon"l.Character.HumanoidRootPart.CanCollide=false end)end end end end)else print("Toggle Off")end end)i:NewToggle("Player ESP","ESP for Players inside of the game.",function(j)if j then local function n(player)local o=Instance.new("BoxHandleAdornment",player)o.AlwaysOnTop=true;o.ZIndex=5;o.Size=player.Size;o.Adornee=player;o.Transparency=0;o.Color=BrickColor.new("Bright blue")end;function Main(p)for m,l in pairs(p:GetChildren())do if l:IsA("BasePart")and not l:FindFirstChild("BoxHandleAdornment")then n(l)end end end;for m,l in pairs(game.Workspace:GetDescendants())do pcall(function()if l:FindFirstChild("Humanoid")and l.Name~=a.Name then Main(l)end end)end else for m,l in pairs(game.workspace:GetDescendants())do if l:IsA("BoxHandleAdornment")or l:IsA("BillboardGui")then l:Destroy()end end end end)local h=g:NewTab("Tycoon Buttons:")local i=h:NewSection("xdnt")i:NewButton("Get all Tools","Gets all the tools.",function()for m,l in pairs(workspace:GetDescendants())do if l:IsA("MeshPart")and l.Name:match("Giver")then firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,l,0)end end;for k,l in pairs(game.Workspace:GetDescendants())do if l:IsA("Part")and l.Name:match("Giver")then l.CFrame=c.CFrame;l.CanCollide=false;l.Transparency=1;l.Material="Plastic"end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("Model")and l.Name:match("PistolGiver")then firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,l.Part,0)end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("MeshPart")and l.Name:match("Giver1")then end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("MeshPart")and l.Name:match("Giver2")then end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("MeshPart")and l.Name:match("Giver3")then end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("MeshPart")and l.Name:match("Giver4")then end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("MeshPart")and l.Name:match("Giver5")then end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("MeshPart")and l.Name:match("Giver6")then end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("MeshPart")and l.Name:match("GiverPart")then firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,l,0)end end;for m,l in pairs(workspace:GetDescendants())do if l:IsA("Part")and l.Name:match("Giver")or l.Name:match("TouchMe")then firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,l,0)elseif l:IsA("Part")and l.Parent.Name:match("Giver")or l.Parent.Name:match("Giver2")or l.Parent.Name:match("Giver3")or l.Parent.Name:match("Giver4")or l.Parent.Name:match("Giver5")or l.Parent.Name:match("Giver6")then firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,l,0)end end end)i:NewButton("Unlimited Cash [WIP]","Attempts to give you unlimited cash.",function()for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Cash",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Crate",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Redeem",99999)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer(99999)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Iron",math.huge)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Gold",math.huge)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Diamond",math.huge)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer(math.huge)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer(1e16,"G10")end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Gems",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Claim",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Money",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Legendary",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Collect",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("ChangeStat","Cash",1e16)end end;for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Tickets",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("Purchase",-99999999999)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("CompletePurchase",-99999999999)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:FireServer("CompletePurchase",-99999999999)end end;for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Cash",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Crate",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Redeem",99999)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer(99999)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Iron",math.huge)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Gold",math.huge)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Diamond",math.huge)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer(math.huge)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer(1e16,"G10")end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Gems",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Claim",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Money",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Legendary",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Collect",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("ChangeStat","Cash",1e16)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("Purchase",-99999999999)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("CompletePurchase",-99999999999)end end;wait(4)for k,l in pairs(game.ReplicatedStorage:GetDescendants())do if l:IsA("RemoteEvent")then l:InvokeServer("CompletePurchase",-99999999999)end end end)i:NewButton("Spoof Owner to LocalPlayer Name","Spoofs Owner IntValue",function()local q=getrawmetatable(game)local r=q.__index;setreadonly(q,false)q.__index=newcclosure(function(self,s)if tostring(self)=='Owner'and s=='Value'then return game.Players.LocalPlayer.Name end;return r(self,s)end)setreadonly(q,true)end)local h=g:NewTab("LocalPlayer:")local i=h:NewSection("Character Cheats:")i:NewToggle("Fly","Allows you to Fly through the game.",function(j)if j then _G.Enabled=true;local t=game.Workspace.CurrentCamera;local a=game:GetService("Players").LocalPlayer;local u=game:GetService("UserInputService")local v=false;local w=false;local x=false;local y=false;local z=false;local A=false;local function B()for m,l in pairs(a.Character:GetChildren())do pcall(function()l.Anchored=not l.Anchored end)end end;u.InputBegan:Connect(function(C,D)if D then return end;if C.KeyCode==Enum.KeyCode.LeftAlt then Enabled=not Enabled;B()end;if C.KeyCode==Enum.KeyCode.W then v=true end;if C.KeyCode==Enum.KeyCode.S then w=true end;if C.KeyCode==Enum.KeyCode.A then x=true end;if C.KeyCode==Enum.KeyCode.D then y=true end;if C.KeyCode==Enum.KeyCode.Space then z=true end;if C.KeyCode==Enum.KeyCode.LeftControl then A=true end end)u.InputEnded:Connect(function(C,D)if D then return end;if C.KeyCode==Enum.KeyCode.W then v=false end;if C.KeyCode==Enum.KeyCode.S then w=false end;if C.KeyCode==Enum.KeyCode.A then x=false end;if C.KeyCode==Enum.KeyCode.D then y=false end;if C.KeyCode==Enum.KeyCode.Space then z=false end;if C.KeyCode==Enum.KeyCode.LeftControl then A=false end end)while game:GetService("RunService").RenderStepped:Wait()do if Enabled then pcall(function()if v then a.Character:TranslateBy(t.CFrame.lookVector*2)end;if w then a.Character:TranslateBy(-t.CFrame.lookVector*2)end;if x then a.Character:TranslateBy(-t.CFrame:vectorToWorldSpace(Vector3.new(1,0,0))*2)end;if y then a.Character:TranslateBy(t.CFrame:vectorToWorldSpace(Vector3.new(1,0,0))*2)end;if z then a.Character:TranslateBy(t.CFrame:vectorToWorldSpace(Vector3.new(0,1,0))*2)end;if A then a.Character:TranslateBy(-t.CFrame:vectorToWorldSpace(Vector3.new(0,1,0))*2)end end)end end else print("ok")end end)i:NewToggle("NoClip","Enable this to turn on Noclip you can walk through walls.",function()game:getService("RunService"):BindToRenderStep("",0,function()if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid")then return end;if game:getService("UserInputService"):IsKeyDown(Enum.KeyCode.V)then game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)end end)end)i:NewSlider("WalkSpeed","Move the slider to set WalkSpeed for Humanoid",500,16,function(E)a.Character.Humanoid.WalkSpeed=E end)i:NewSlider("JumpPower","Move the slider to set JumpPower for Humanoid",500,50,function(E)a.Character.Humanoid.JumpPower=E end)i:NewSlider("Gravity","Move the slider to set Garavity inside of the workspace.",50,0,function(E)workspace.Gravity=E end)local h=g:NewTab("Teleports:")local i=h:NewSection("Teleports")i:NewButton("Rejoin","Click on this button to rejoin the game.",function()game:GetService("TeleportService"):Teleport(game.PlaceId,player)end)local h=g:NewTab("Settings:")local i=h:NewSection(("Universal-Tycoon UI inititalized in %s seconds"):format(tick()-d))local F=math.floor(workspace.DistributedGameTime)local G=math.floor(workspace.DistributedGameTime/60)local H=math.floor(workspace.DistributedGameTime/60/60)local F=F-G*60;local G=G-H*60;i:NewKeybind("Keybind to ToggleUI","Toggles Universal-Tycoon UI",Enum.KeyCode.F,function()e:ToggleUI()end)local i;h:NewSection("Elapsed Time "..H.." Hours, "..G.." Minutes, "..F.." Seconds")i:NewKeybind("Keybind to ToggleUI","Toggles Universal-Tycoon UI",Enum.KeyCode.LeftAlt,function()e:ToggleUI()end)
