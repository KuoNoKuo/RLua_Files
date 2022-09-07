--A Simple Function to Detect Player input

--The Following script is recommended to be created in "StarterGui" or "StarterPlayer>StarterPlayerScripts"
--SCRIPT
--Get the UserInputService Service
local UIS = game:GetService("UserInputService")

--A function that will be called after the input has been detected
local function onInputBegan(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then --checks if input key is LMB
		print("The left mouse button has been pressed!")
	end
end

--detects input:
UserInputService.InputBegan:Connect(onInputBegan) --then calls the function

--OFFICIAL DOCUMENTATION: 'https://create.roblox.com/docs/reference/engine/classes/UserInputService'