---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by yanghl.
--- DateTime: 19/9/4 上午12:10
---

--[[local file = io.open("test4.txt","r")
local line = nil
for line in file:lines() do
    print(line)
end]]



--[[local file = io.input("test4.txt")
repeat
    local line = io.read()
    if line == nil then
        break
    end
    print(line)
until(false)
io.close(file)]]


local file = io.open("test4.txt","a+")
io.output(file)
io.write("33333930393 \n")
io.close(file)









