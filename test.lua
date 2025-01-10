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
    end
    m.write("You guessed!")
end

local m = peripheral.find("monitor")
m = peripheral.wrap("left")

m.setTextScale(5)
m.clear()
m.setCursorPos(1, 1)

guessing_game(m)

