Number = math.random(1, 100)

---@type integer
Guess = nil

while Guess ~= Number do
    Guess = tonumber(io.read())
    if Guess < Number then
        print("Too low!")
    elseif Guess > Number then
        print("Too high!")
    end
end
print("You guessed!")