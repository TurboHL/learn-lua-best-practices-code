---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by yanghl.
--- DateTime: 19/9/3 下午5:39
---

for i = 1, 10 do
    if i == 5 then
        print("break",i)
        break
    end
end

local function add(x,y)
    return x + y
end

local sum = add(1,2)
print("the sum is " .. sum)


local function foo()
    print("before")
    do return end
    print("after")
end

local a = foo

for i = 1, 3 do
    if i <= 2 then
        print(i,"yes continue")
        goto continue
    end

    print(i,"no continue")

    ::continue::

    print([[i'am end]])
end

