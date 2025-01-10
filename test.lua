local function guessing_game(m)
    local number = math.random(1, 100)

    m.write("### Guess the number ###")
    break_line(m)
    m.write("A number has been chosen between 1 and 100. Guess it!")

    while guess ~= number do
        local guess = tonumber(io.read())
        if guess < number then
            m.write("Too low!")
        elseif guess > number then
            m.write("Too high!")
        end
        break_line(m)
    end
    m.write("You guessed!")
end

local function setup_monitor()
    local m = peripheral.wrap("left")

    m.setTextScale(1)
    m.clear()
    m.setCursorPos(1, 1)

    return m
end

function break_line(m)
    local _, y = m.getCursorPos()
    m.setCursorPos(1, y + 1)
end 

local function main()
    local m = setup_monitor()
    guessing_game(m)
end

main()
