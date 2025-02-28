local Blocks = {}

local BasePlate do
    local x, y, z
    local axis = { x = 200, y = 200, z = 1 } -- The Base limit
    local area = axis.x * axis.y
    function SetLimits(LimitX, LimitY, LimitZ)
        local LimitX = math.max(200)
        local LimitY = math.max(200)
        local LimitZ = math.max(1)

        local function BlockOnSpawn()
            
            local StartingPos = 0

            local RandomSpawnPoisition = math.random(StartingPos, area)
        end

        return BlockOnSpawn()
    end
end

local function GetBlock()
    local BlockTypes = { "Coal", "Iron", "Gold", "Diamond", "Emerald", "Redstone", "Lapis", "Quartz" }

    for Blocks, Times in pairs(BlockTypes) do
        local Times = 1
        local Blocks = BlockTypes[math.random(1, #BlockTypes)]

        return Blocks, Times
    end
end

local function TimeToSpawn(Time)
    local Time = 15

    while Time > 0 do
        Time = Time - 1
        if Time == 0 then
            local BLOCK_TYPE = GetBlock()
            table.insert(Blocks, BLOCK_TYPE)
        end
    end
end

TimeToSpawn(10)
print(Blocks[1])
