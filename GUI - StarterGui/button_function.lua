--GuiObject Location/path has to be correct otherwise it will call an error

--Recommended StarterGui Layout:
--[[
>StarterGui
    >LOCALSCRIPT HERE <-- localscript here and edit
    >MenuFrame
        >Close_Button
        >..OtherContents
    >OpenButton

]]

local open_button = script.Parent:FindFirstChild("OpenButton")
local Menu = script.Parent:FindFirstChild("MenuFrame")
local close_button = Menu.Close_Button

button.MouseButton1Down:Connect(function()
    Menu.Visible = true --makes the menu frame visible 
end)

Close_Button.MouseButton1Down:Connect(function()
    Menu.Visible = false
end)

--You can change the open button text if you don't want the close button:
--[[
>StarterGui
    >LOCALSCRIPT HERE <-- localscript here and edit
    >MenuFrame
        >..OtherContents
    >OpenButton

]]
local open_button = script.Parent:FindFirstChild("OpenButton")
local Menu = script.Parent:FindFirstChild("MenuFrame")
local status = false

button.MouseButton1Down:Connect(function()
    if status = false then
        status = true
        Menu.Visible = true
        button.Text = "Close"
    elseif status = true then
        status = false
        Menu.Visible = false
        button.Text = "Open"
end)