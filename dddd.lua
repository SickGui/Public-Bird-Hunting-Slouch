loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua",true))()
function use()

	local damageevent = game:GetService("ReplicatedStorage"):WaitForChild("Damage2")
	local damageevent2 = game.ReplicatedStorage.Damage3
	task.delay(3, function()
		game.Players.LocalPlayer.Backpack:FindFirstChild("Standless"):Destroy()
	end)
	
	wait(3)

	local ButtonUI = Instance.new("ScreenGui")
	ButtonUI.ResetOnSpawn = true
	ButtonUI.Parent = game.Players.LocalPlayer.PlayerGui

	local Offset = 0

	local barrage = Instance.new("TextButton")
	barrage.Size = UDim2.fromOffset(200, 50)
	barrage.Text = "Barrage"
	barrage.AnchorPoint = Vector2.new(1, 1)
	barrage.Position = UDim2.new(1, -100, 1, -50*Offset)
	Offset += 1
	barrage.Parent = ButtonUI

	local strong = Instance.new("TextButton")
	strong.Text = "strong"
	strong.Size = UDim2.fromOffset(200, 50)
	strong.AnchorPoint = Vector2.new(1, 1)
	strong.Position = UDim2.new(1, -100, 1, -50*Offset)
	Offset += 1
	strong.Parent = ButtonUI

	local roll = Instance.new("TextButton")
	roll.Size = UDim2.fromOffset(200, 50)
	roll.Text = "roll"
	roll.AnchorPoint = Vector2.new(1, 1)
	roll.Position = UDim2.new(1, -100, 1, -50*Offset)
	Offset += 1
	roll.Parent = ButtonUI

	local click = Instance.new("TextButton")
	click.Size = UDim2.fromOffset(200, 50)
	click.Text = "Click"
	click.AnchorPoint = Vector2.new(1, 1)
	click.Position = UDim2.new(1, -100, 1, -50*Offset)
	Offset += 1
	click.Parent = ButtonUI

	local Slam = Instance.new("TextButton")
	Slam.Size = UDim2.fromOffset(200, 50)
	Slam.Text = "Slam"
	Slam.AnchorPoint = Vector2.new(1, 1)
	Slam.Position = UDim2.new(1, -100, 1, -50*Offset)
	Offset += 1
	Slam.Parent = ButtonUI

	--Events
	local replicatedstorage = game:GetService("ReplicatedStorage")
	local knockevent = replicatedstorage.KnockAdvanced
	local dodgeevent = replicatedstorage.Dodge
	local trailevent = replicatedstorage.Trail
	local strongpunchevent = replicatedstorage.StrongPunch
	
	local anchorevent = replicatedstorage.Anchor
	local trailevent = replicatedstorage.Trail
	local velocityevent = replicatedstorage.Velocity
	local knockevent = replicatedstorage.Knock
	local blockevent = replicatedstorage.Block
	local knockclientevent = replicatedstorage.KnockClient
	local slamevent = replicatedstorage.DoppioSlam
	local knockedevent = replicatedstorage.Knocked
	local getupevent = replicatedstorage.GetUp
	local berserkclientevent = replicatedstorage.BerserkClient


	local plr = game:GetService("Players").LocalPlayer
	repeat
		wait()
	until plr.Character and plr.Character.Humanoid
	local chr = plr.Character
	local human = chr.Humanoid
	local hrp = chr.HumanoidRootPart
	mouse = plr:GetMouse()
	cam = workspace.CurrentCamera

	local stand = chr:WaitForChild("Stand")

	local head = chr["Head"]
	local ntorso = chr["Torso"]
	local rarm = chr["Right Arm"]
	local larm = chr["Left Arm"]
	local rightleg = chr["Right Leg"]
	local leftleg = chr["Left Leg"]
	local rot = chr["HumanoidRootPart"]

	local stand = chr:WaitForChild("Stand")
	local disabled = chr:WaitForChild("Disabled")

	local activu


	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://122520151681707"

	local track = human:LoadAnimation(anim)

	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://116595636182833"

	local strongpunchanim = human:LoadAnimation(anim)

	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://107175017958105"

	local leftpunchanim = human:LoadAnimation(anim)

	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://114810074452256"

	local rightpunchanim = human:LoadAnimation(anim)

	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://131582989683380"
	
	local rollanim = human:LoadAnimation(anim)
	
	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://130551100317989"

	local blockanim = human:LoadAnimation(anim)

	local punchsfx = ntorso.Swing
	local dodgesfx = ntorso.Dodge
	local blocksfx = ntorso.Guard

	function hito2(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
		for _, guy in pairs(workspace.Entities:GetChildren()) do
			if partoz.Anchored == true then return end
			if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= game.Players.LocalPlayer.Character and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then

				if partoz.Anchored then return end
				local humz = guy:FindFirstChild("Humanoid")
				local horp = guy:FindFirstChild("HumanoidRootPart")
				print(guy.Name)
				damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
				local db = Instance.new("StringValue")
				db.Name = "alabo"
				db.Parent = horp
				delay(debtim, function()
					db:Destroy()
				end)
			else
				print(guy.Name)
			end
		end
	end

	function hito3(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
		for _, guy in pairs(workspace.Entities:GetChildren()) do
			if partoz.Anchored == true then return end
			if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
				do
					if partoz.Anchored then return end
					local humz = guy:FindFirstChild("Humanoid")
					local horp = guy:FindFirstChild("HumanoidRootPart")
					damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
					knockevent:FireServer(humz)
					local db = Instance.new("StringValue")
					db.Name = "alabo"
					db.Parent = horp
					delay(debtim, function()
						db:Destroy()
					end)
				end
			end
		end
	end

	function hito4(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
		for _, guy in pairs(workspace.Entities:GetChildren()) do
			if partoz.Anchored == true then return end
			if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
				do
					if partoz.Anchored then return end
					local humz = guy:FindFirstChild("Humanoid")
					local horp = guy:FindFirstChild("HumanoidRootPart")
					damageevent2:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
					--knockevent:FireServer(humz)
					local db = Instance.new("StringValue")
					db.Name = "alabo"
					db.Parent = horp
					delay(debtim, function()
						db:Destroy()
					end)
				end
			end
		end
	end

	function hito(partoz, partcfr, magn, dmg, debtim, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
		for _, guy in pairs(workspace:GetChildren()) do
			if partoz.Anchored == true then return end
			if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
				do
					if partoz.Anchored then return end
					local humz = guy:FindFirstChild("Humanoid")
					local horp = guy:FindFirstChild("HumanoidRootPart")
					damageevent:FireServer(humz, partcfr, dmg, debtime, bodyfdire, effect, grow, color, sound, pitch, volume)
					local db = Instance.new("StringValue")
					db.Name = "alabo"
					db.Parent = horp
					delay(debtim, function()
						db:Destroy()
					end)
				end
			end
		end
	end


	local BarrageCooldown = false
	local EHMMM = 0


	function barrage1()
		if activu or BarrageCooldown then return end
		activu = true
		local bep = true
		local de = mouse.KeyUp:connect(function(key)
			if key == "e" then
				bep = false
			end
		end)
		trailevent:FireServer(stand.StandRarm.Trail, true)
		trailevent:FireServer(stand.StandLarm.Trail, true)
		--trailevent:FireServer(rot.HamonLight, true)
		track:Play(0.1, 1, 1.5)
		human.JumpPower = 0
		repeat
			EHMMM = EHMMM + 0.5
			hito2(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3.5, 6.25, 0.05, 0.25, rot.CFrame.lookVector * 2.5, 0.075,"rbxassetid://9122060057", math.random(9, 11) / 10, math.random(9, 11) / 50)
			hito2(larm, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3.5, 6.25, 0.05, 0.25, rot.CFrame.lookVector * 2.5, 0.075,"rbxassetid://9122060057", math.random(9, 11) / 10, math.random(9, 11) / 50)		
			wait(0.05)
		until bep == false or disabled.Value == true or EHMMM >= 40 
		EHMMM = 0
		human.JumpPower = 50
		track:Stop(0.1)
		trailevent:FireServer(stand.StandRarm.Trail, false)
		trailevent:FireServer(stand.StandLarm.Trail, false)
		--trailevent:FireServer(rot.HamonLight, false)
		BarrageCooldown = true
		activu = false
		wait(5)
		BarrageCooldown = false
	end

	--barrage()

	--BarrageCooldown

	local leftorright = false
	function punch()
		if activu == true then return end
		activu = true
		punchsfx:Play()
		human.JumpPower = 0
		if leftorright == false then
			leftorright = true
			rightpunchanim:Play(0.1, 1, 1)
			trailevent:FireServer(stand.StandRarm.Trail, true)
			wait(0.2)
			coroutine.resume(coroutine.create(function()
				for _ = 1, 5 do
					wait()
					hito4(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 12.5, 0.5, 0.25, rot.CFrame.lookVector * 10, 0.075,"rbxassetid://9122060057", math.random(9, 11) / 10, math.random(9, 11) / 25)
				end
			end))
		elseif leftorright == true then
			leftorright = false
			leftpunchanim:Play(0.1, 1, 1)
			trailevent:FireServer(stand.StandLarm.Trail, true)
			wait(0.2)
			coroutine.resume(coroutine.create(function()
				for _ = 1, 5 do
					wait()
					hito4(larm, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,2.5, 12.5, 0.5, 0.25, rot.CFrame.lookVector * 10, 0.075,"rbxassetid://9122060057", math.random(9, 11) / 10, math.random(9, 11) / 25)
				end
			end))
		end
		wait(0.3)
		activu = false
		human.JumpPower = 50
		trailevent:FireServer(stand.StandRarm.Trail, false)
		trailevent:FireServer(stand.StandLarm.Trail, false)
	end

	punch()

	local strongpunchcooldown = false
	function strongpunch()
		if activu == true then return end
		if strongpunchcooldown == true then return end
		activu = true
		strongpunchcooldown = true
		punchsfx:Play()
		strongpunchanim:Play(0.1, 1, 1)
		trailevent:FireServer(stand.StandRarm.Trail, true)
		wait(0.5)
		strongpunchevent:FireServer(Vector3.new(1, 0.5, 1), Vector3.new(0.3, 0.15, 0.3), BrickColor.new("Institutional white"))
		coroutine.resume(coroutine.create(function()
			for _ = 1, 15 do
				wait()
				hito3(rarm, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.new(math.random(-0.25, 0.25), math.random(-0.25, 0.25), math.random(-0.25, 0.25)) ,3, 37.5, 0.75, 0.25, rot.CFrame.lookVector * 50, 0.25,"rbxassetid://9122060057", math.random(9, 11) / 10, math.random(9, 11) / 10)
			end
		end))
		wait(0.65)
		trailevent:FireServer(stand.StandRarm.Trail, false)
		activu = false
		wait(7.5)
		strongpunchcooldown = false
	end	
	
	function block()
		if activu == true then return end
		activu = true
		local bep = true
		local de = mouse.KeyUp:connect(function(key)
			if key == "x" then
				bep = false
			end
		end)
		blockanim:Play(0.1, 1,1)
		blockevent:FireServer(true)
		blocksfx:Play()
		human.JumpPower = 0
		repeat
			wait()
		until bep == false
		blockevent:FireServer(false)
		blockanim:Stop(0.1)
		human.JumpPower = 50
		activu = false
	end
	

	--strongpunch()

	dodgecooldown = false

	function dodge()
		if activu == true then return end
		if dodgecooldown == true then return end
		activu = true
		dodgecooldown = true
		rollanim:Play(0.1, 1,1)
		dodgesfx:Play()
		dodgeevent:FireServer()
		local boopyve = Instance.new("BodyVelocity")
		boopyve.MaxForce = Vector3.new(100000, 0, 100000)
		boopyve.P = math.huge
		boopyve.Velocity = hrp.CFrame.lookVector * 50
		boopyve.Parent = chr.HumanoidRootPart
		game.Debris:AddItem(boopyve, 0.25)
		wait(0.4)
		activu = false
		wait(3)
		dodgecooldown = false	
	end

	--barrage()

	--104315753597984
	
	local con = mouse.KeyDown:Connect(function(key)
		if key == "c" then
			dodge()
		elseif key == "x" then
			block()
		elseif key == "e" then
			barrage1()
		elseif key == "r" then
			strongpunch()
		end
	end)
	
	local pon = mouse.Button1Down:Connect(function()
		punch()
	end)
	
	plr.CharacterRemoving:Once(function()
		con:Disconnect()
		pon:Disconnect()
	end)


	--barrage.MouseButton1Down:Connect(function()
	--	barrage1()
	--end)

	--roll.MouseButton1Click:Connect(function()
	--	dodge()
	--end)

	--strong.MouseButton1Click:Connect(function()
	--	strongpunch()
	--end)

	--click.MouseButton1Click:Connect(function()
	--	punch()
	--end)
	
	--block.MouseButton1Click:Connect(function()
	--	block()
	--end)
	
	game.Lighting.TS.Changed:Connect(function()
		if game.Lighting.TS.Value == true then
			anchorevent:FireServer(ntorso ,true)
			anchorevent:FireServer(rarm ,true)
			anchorevent:FireServer(larm ,true)
			anchorevent:FireServer(rightleg ,true)
			anchorevent:FireServer(leftleg ,true)
			anchorevent:FireServer(head ,true)

		elseif game.Lighting.TS.Value == false then
			anchorevent:FireServer(ntorso ,false)
			anchorevent:FireServer(rarm ,false)
			anchorevent:FireServer(larm ,false)
			anchorevent:FireServer(rightleg ,false)
			anchorevent:FireServer(leftleg ,false)
			anchorevent:FireServer(head ,false)
		end
	end)

	if game.Lighting.TS.Value == true then
		anchorevent:FireServer(ntorso ,true)
		anchorevent:FireServer(rarm ,true)
		anchorevent:FireServer(larm ,true)
		anchorevent:FireServer(rightleg ,true)
		anchorevent:FireServer(leftleg ,true)
		anchorevent:FireServer(head ,true)
	end

	berserkclientevent.OnClientEvent:connect(function()
		game.Lighting.Ambient = Color3.fromRGB(0, 0, 122)
		game.Lighting.Berserk.Enabled = true
		human.WalkSpeed = 4
		human:SetStateEnabled(3, false)
		wait(2.5)
		human.WalkSpeed = 16
		human:SetStateEnabled(3, true)
		game.Lighting.Ambient = Color3.fromRGB(150, 150, 150)
		game.Lighting.Berserk.Enabled = false
	end)

	local deathevent = replicatedstorage.Death
	human.HealthChanged:connect(function()
		if human.Health < 1 then
			human:SetStateEnabled(3, false)
			human:SetStateEnabled(15, false)
			deathevent:FireServer(false)
		end
	end)

	knockclientevent.OnClientEvent:connect(function(enemyplr)
		knockedevent:FireServer()
		human:SetStateEnabled(3, false)
		wait(1.25)
		if human.Health >= 1 then
			getupevent:FireServer()
			human:SetStateEnabled(3, true)
		end
	end)

end

use()

game.Players.LocalPlayer.CharacterAdded:Connect(use)


