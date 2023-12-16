local CustomRP = {}

CustomRP.Expressions = {}
CustomRP.Walks = {}
CustomRP.Shared = {}
CustomRP.Dances = {}
CustomRP.AnimalEmotes = {}
CustomRP.Exits = {}
CustomRP.Emotes = {}
CustomRP.PropEmotes = {}

-----------------------------------------------------------------------------------------
--| I don't think you should change the code below unless you know what you are doing |--
-----------------------------------------------------------------------------------------

-- Add the custom emotes to RPEmotes main array
for arrayName, array in pairs(CustomRP) do
    if RP[arrayName] then
        for emoteName, emoteData in pairs(array) do
            RP[arrayName][emoteName] = emoteData
        end
    end
    -- Free memory
    CustomRP[arrayName] = nil
end
-- Free memory
CustomRP = nil