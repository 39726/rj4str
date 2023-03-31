local function Init() 
    local text = Drawing.new("Text")
    text.Visible = true
    text.ZIndex = 1
    text.Text = "Rejoin Autofarm | made by mar"
    text.Color = Color3.fromRGB(255, 255, 255)
    text.Outline = true
    text.OutlineColor = Color3.fromRGB(255, 90, 90)
    text.Center = true
    text.Size = 40
    text.Font = 0
    text.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, 30)

    local LocalPlayer = game:GetService('Players').LocalPlayer;

    game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
        if LocalPlayer.Character and LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
            game:GetService("ReplicatedStorage").Events.RejoinGame:FireServer();
            task.wait(2)
        end
    end)
end

Init()
