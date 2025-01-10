local function guessing_game(m)
    local number = math.random(1, 100)

    ---@type integer
    local guess = nil

    m.write("### Guess the number ###")
    m.write("A number has been chosen between 1 and 100. Guess it!")

    while guess ~= number do
        guess = tonumber(io.read())
        if guess < number then
            m.write("Too low!")
        elseif guess > number then
            m.write("Too high!")
        end
        m.write("\n")
    end
    m.write("You guessed!")
end

local function setup_monitor()
    local m = peripheral.wrap("left")

    m.setTextScale(0.5)
    m.clear()
    m.setCursorPos(1, 1)

    return m
end

local function main()
    local m = setup_monitor()
    guessing_game(m)
end

main()
