key, is_held = nil, false
while not (key == "backspace" and is_held)  do
    event, key, is_held = os.pullEvent("key")
    print(("%s held=%s"):format(keys.getName(key), is_held))
end