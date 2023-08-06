--Thank you for using my script! Don't mess with any variables on it by the way, it will break.
local uis = game:GetService("UserInputService")
local ismobile = uis.TouchEnabled
local isGameRobot64 = false
local gameids = {13924216331, 13212773206, 9212800428, 1111083356, 6935553532, 14197060120, 12643931299, 14217259298, 12599246715, 9294246261, 12883289250, 9294246261}
local plr = game.Players.LocalPlayer
local debounce = false
local isendlessrobot64 = false
local ui = nil
local debugMobile = Instance.new("ScreenGui")
local placeholder = Instance.new("Frame")
local placeholder_2 = Instance.new("ImageButton")
local front = Instance.new("ImageButton")
local up = Instance.new("ImageButton")
local down = Instance.new("ImageButton")
local reset = Instance.new("ImageButton")
debugMobile.Name = "debugMobile"
debugMobile.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
debugMobile.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
placeholder.Name = "placeholder"
placeholder.Parent = debugMobile
placeholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
placeholder.BackgroundTransparency = 1.000
placeholder.Visible = false
placeholder.Size = UDim2.new(1, 0, 1, 0)
placeholder_2.Name = "placeholder"
placeholder_2.Parent = placeholder
placeholder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
placeholder_2.BackgroundTransparency = 1.000
placeholder_2.Position = UDim2.new(0.75, 0, 0.949999988, 0)
placeholder_2.Selectable = false
placeholder_2.Size = UDim2.new(0.100000001, 0, -0.100000001, 0)
placeholder_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
placeholder_2.ImageTransparency = 1.000
front.Name = "front"
front.Parent = placeholder_2
front.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
front.BackgroundTransparency = 1.000
front.Position = UDim2.new(-1, 0, -3, 0)
front.Selectable = false
front.Size = UDim2.new(1, 0, 1, 0)
front.SizeConstraint = Enum.SizeConstraint.RelativeXX
front.Image = "http://www.roblox.com/asset/?id=14330740364"
front.ImageRectOffset = Vector2.new(0, 256)
front.ImageRectSize = Vector2.new(256, 256)
up.Name = "up"
up.Parent = placeholder_2
up.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
up.BackgroundTransparency = 1.000
up.Position = UDim2.new(-1, 0, -2, 0)
up.Selectable = false
up.Size = UDim2.new(1, 0, 1, 0)
up.SizeConstraint = Enum.SizeConstraint.RelativeXX
up.Image = "http://www.roblox.com/asset/?id=14330739164"
up.ImageRectOffset = Vector2.new(0, 256)
up.ImageRectSize = Vector2.new(256, 256)
down.Name = "down"
down.Parent = placeholder_2
down.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
down.BackgroundTransparency = 1.000
down.Position = UDim2.new(0, 0, -2, 0)
down.Selectable = false
down.Size = UDim2.new(1, 0, 1, 0)
down.SizeConstraint = Enum.SizeConstraint.RelativeXX
down.Image = "http://www.roblox.com/asset/?id=14330740918"
down.ImageRectOffset = Vector2.new(0, 256)
down.ImageRectSize = Vector2.new(256, 256)
reset.Name = "reset"
reset.Parent = placeholder_2
reset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
reset.BackgroundTransparency = 1.000
reset.Position = UDim2.new(0, 0, -3, 0)
reset.Selectable = false
reset.Size = UDim2.new(1, 0, 1, 0)
reset.SizeConstraint = Enum.SizeConstraint.RelativeXX
reset.Image = "http://www.roblox.com/asset/?id=14330739787"
reset.ImageRectOffset = Vector2.new(0, 256)
reset.ImageRectSize = Vector2.new(256, 256)

function mobileguivisible()
	placeholder.Visible = true
end

repeat wait() until game:IsLoaded()
--game.Loaded:Wait()

for _, id in pairs(gameids) do
	if id == game.PlaceId then
		isGameRobot64 = true
		if game.PlaceId == 13924216331 then
			isendlessrobot64 = true
		end
		break
	end
end
if game.ReplicatedFirst:FindFirstChild("vis") ~= nil and workspace:FindFirstChild("share") ~= nil then
	if workspace.share:FindFirstChild("replicate") ~= nil then
		if game.ReplicatedFirst:FindFirstChild("candy") ~= nil then
			isGameRobot64 = true
		end
	end
end
if game.Lighting:FindFirstChild("vis") ~= nil then
	if game.Lighting:FindFirstChild("candy") ~= nil then
		isGameRobot64 = true
	end
end
if ismobile then
	mobileguivisible()
end

plr.Chatted:Connect(function(msg)
	if msg == "up" then
		local char = workspace:FindFirstChild("char")
		local vel = Instance.new("BodyVelocity", char)
		vel.Name = "MoonJumpVelocity"
		vel.Velocity = Vector3.new(0, 200, 0)
		vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		wait(.01)
		vel:Destroy()
	elseif msg == "down" then
		local char = workspace:FindFirstChild("char")
		local vel = Instance.new("BodyVelocity", char)
		vel.Name = "MoonJumpVelocity"
		vel.Velocity = Vector3.new(0, -200, 0)
		vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		wait(.01)
		vel:Destroy()
	elseif msg == "front" then
		local char = workspace:FindFirstChild("char")
		local vel = Instance.new("BodyVelocity", char)
		vel.Name = "MoonJumpVelocity"
		vel.Velocity = char.CFrame.LookVector * 180
		vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		wait(.01)
		vel:Destroy()
	elseif msg == "all" then
		local char = workspace:FindFirstChild("char")
		for i,v in pairs(char:GetChildren()) do
			if v.Name == "MoonJumpVelocity" then
				v:Destroy()
			end
		end
	end
end)

uis.InputBegan:Connect(function(input, gameProcessedEvent)
	if isGameRobot64 then
		if input.KeyCode == Enum.KeyCode.R then
			local char = workspace:FindFirstChild("char")
			local vel = Instance.new("BodyVelocity", char)
			vel.Name = "MoonJumpVelocity"
			vel.Velocity = Vector3.new(0, 200, 0)
			vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			wait(.01)
			vel:Destroy()
		elseif input.KeyCode == Enum.KeyCode.F then
			local char = workspace:FindFirstChild("char")
			local vel = Instance.new("BodyVelocity", char)
			vel.Name = "MoonJumpVelocity"
			vel.Velocity = Vector3.new(0, -200, 0)
			vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			wait(.01)
			vel:Destroy()
		elseif input.KeyCode == Enum.KeyCode.T then
			local char = workspace:FindFirstChild("char")
			local vel = Instance.new("BodyVelocity", char)
			vel.Name = "MoonJumpVelocity"
			vel.Velocity = char.CFrame.LookVector * 180
			vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			wait(.01)
			vel:Destroy()
		elseif input.KeyCode == Enum.KeyCode.G then
			local char = workspace:FindFirstChild("char")
			for i,v in pairs(char:GetChildren()) do
				if v.Name == "MoonJumpVelocity" then
					v:Destroy()
				end
			end
		end
	end
end)
up.InputBegan:Connect(function()
	if debounce == false then
		debounce = true
		task.wait()
		up.ImageRectOffset = Vector2.new(256, 256)
		local char = workspace:FindFirstChild("char")
		local vel = Instance.new("BodyVelocity", char)
		vel.Name = "MoonJumpVelocity"
		vel.Velocity = Vector3.new(0, 200, 0)
		vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		wait(.01)
		vel:Destroy()
		debounce = false
		up.ImageRectOffset = Vector2.new(0, 256)
	end
end)
up.InputEnded:Connect(function()
	up.ImageRectOffset = Vector2.new(0, 256)
end)
down.InputBegan:Connect(function()
	if debounce == false then
		debounce = true
		task.wait()
		up.ImageRectOffset = Vector2.new(256, 256)
		local char = workspace:FindFirstChild("char")
		local vel = Instance.new("BodyVelocity", char)
		vel.Name = "MoonJumpVelocity"
		vel.Velocity = Vector3.new(0, -200, 0)
		vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		wait(.01)
		vel:Destroy()
		debounce = false
		up.ImageRectOffset = Vector2.new(0, 256)
	end
end)
down.InputEnded:Connect(function()
	up.ImageRectOffset = Vector2.new(0, 256)
end)
front.InputBegan:Connect(function()
	if debounce == false then
		debounce = true
		task.wait()
		up.ImageRectOffset = Vector2.new(256, 256)
		local char = workspace:FindFirstChild("char")
		local vel = Instance.new("BodyVelocity", char)
		vel.Name = "MoonJumpVelocity"
		vel.Velocity = char.CFrame.LookVector * 180
		vel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		wait(.01)
		vel:Destroy()
		debounce = false
		up.ImageRectOffset = Vector2.new(0, 256)
	end
end)
front.InputEnded:Connect(function()
	up.ImageRectOffset = Vector2.new(0, 256)
end)
reset.InputBegan:Connect(function()
	if debounce == false then
		debounce = true
		task.wait()
		up.ImageRectOffset = Vector2.new(256, 256)
		local char = workspace:FindFirstChild("char")
		for i,v in pairs(char:GetChildren()) do
			if v.Name == "MoonJumpVelocity" then
				v:Destroy()
			end
		end
		debounce = false
		up.ImageRectOffset = Vector2.new(0, 256)
	end
end)
reset.InputEnded:Connect(function()
	up.ImageRectOffset = Vector2.new(0, 256)
end)

if plr.PlayerGui:FindFirstChild("UI") then
	ui = plr.PlayerGui:FindFirstChild("UI")
end

local led = nil
if plr.PlayerGui:FindFirstChild("UI"):FindFirstChild("pause"):FindFirstChild("bg"):FindFirstChild("pause"):FindFirstChild("icecream") then
	if isendlessrobot64 then
	led = plr.PlayerGui:FindFirstChild("UI"):FindFirstChild("pause"):FindFirstChild("bg"):FindFirstChild("pause"):FindFirstChild("icecream")
	led.Text = "Spawn Icecream"
	led.TextTransparency = 0
	led.TextColor3 = Color3.new(248, 248, 248)
	led.outline.Text = "Spawn Icecream"
	led.outline.TextTransparency = 0.8
	led.outline.TextColor3 = Color3.new(0, 0, 0)
	led.outline.Position = UDim2.new(0, 0, 0.05, 0)
	end
end

led.MouseButton1Click:Connect(function()
	if game:GetService("ReplicatedFirst"):FindFirstChild("icedcream") then
		local icedcream = game:GetService("ReplicatedFirst"):FindFirstChild("icedcream"):Clone()
		icedcream.Parent = workspace
		icedcream.CFrame = workspace:FindFirstChild("char").CFrame * CFrame.new(0,6.9,0)
		if icedcream:FindFirstChild("desc") then
			icedcream:FindFirstChild("desc").Value = "You can jump!"
		end
	elseif game:GetService("Lighting"):FindFirstChild("icedcream") then
		local icedcream = game:GetService("Lighting"):FindFirstChild("icedcream"):Clone()
		icedcream.Parent = workspace
		icedcream.CFrame = workspace:FindFirstChild("char").CFrame * CFrame.new(0,6.9,0)
		if icedcream:FindFirstChild("desc") then
			icedcream:FindFirstChild("desc").Value = "You can jump!"
		end
	else
		local icedcream = Instance.new("Part",workspace)
		icedcream.CFrame = workspace:FindFirstChild("char").CFrame * CFrame.new(0,6.9,0)
		if icedcream:FindFirstChild("desc") then
			icedcream:FindFirstChild("desc").Value = "You can jump!"
		end
	end
end)