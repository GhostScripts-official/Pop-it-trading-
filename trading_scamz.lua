local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local pickupRange = 10 -- Радиус подбора предметов

while true do
    task.wait(0.5) -- ожидание перед каждой проверкой 

    for _, item in pairs(workspace:GetChildren()) do
        if item:IsA("Model") and item:FindFirstChild("Handle") then
            local handle = item.Handle
            if (handle.Position - humanoidRootPart.Position).magnitude <= pickupRange then
                firetouchinterest(handle, humanoidRootPart, 0) -- Симуляция касания
                firetouchinterest(handle, humanoidRootPart, 1)
            end
        end
    end
end
