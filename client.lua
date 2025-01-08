local model = 'a_c_pig'
local superjumpactive = false

RegisterCommand("SJ", function()
    if IsModelInCdimage(model) and IsModelValid(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(0)
        end
        SetPlayerModel(PlayerId(), model)
        superjumpactive = true
        while superjumpactive == true do
            SetSuperJumpThisFrame(PlayerId())
            Wait(1)
        end
    end
end)