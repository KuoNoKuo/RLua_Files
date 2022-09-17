--resize any GUIObject using TweenSize

--Set the path to the GUIOBject here
local object = script.Parent:FindFirstChild("Frame")

--[[
    >StarterGui
        >LOCALSCRIPT HERE <-- edit this 
        >Frame
        >..Other Contents
]]
--Important Note:
--The scale will be increase from the opisite position of the anchor point. Setting AnchorPoint to '0.5,0.5' is recommended
object:TweenSize(UDim2.new(0.5,0,0.5,0),'Out','Quint',1)

object:TweenPosition(
    UDim2.new(
        0.5,0,  -- X Axis Size (first parameter is scale(screen proportion) and second is offset(screen pixels)
        0.5,0   --Y Axis Size
    ),
    'Out', -- 'In' or 'Out'
    'Quint', -- EasingStyle go to "https://developer.roblox.com/en-us/api-reference/enum/EasingStyle" for list of styles
    1, --Transition Time (default 1 second)
)
