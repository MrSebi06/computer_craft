Number = math.random(1, 100)

---@type integer
Guess = nil

print("### Guess the number ###")
print("A number has been chosen between 1 and 100. Guess it!")

while Guess ~= Number do
    Guess = tonumber(io.read())
    if Guess < Number then
        print("Too low!")
    elseif Guess > Number then
        print("Too high!")
    end
end
print("You guessed!")