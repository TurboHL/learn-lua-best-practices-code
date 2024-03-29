---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by yanghl.
--- DateTime: 19/9/3 下午4:40
---

local s = "hello word"
local i,j = string.find(s,"hello")
print(i,j)

local s = "hello word form lua"
for w in string.gmatch(s,"%a+") do
    print(w)
end


print("-----------------------------------")

local a = "Lua is cute"
local b = string.gsub(a, "cute", "great")
print(b)
print(a)

print("正则表达是")
print(string.gsub("a (enclosed (in) parentheses) line", "%b()", ""))
print("正则表达是")





local a , b = 10 , 20
print(a)
print(b)

print(2 ^ 10)      -->打印 1024。 求2的10次方
local num = 1357
print(num % 2)       -->打印 1
print((num % 2) == 1) -->打印 true。 判断num是否为奇数
print((num % 5) == 0)  -->打印 false。判断num是否能被5整数

--- 注意：Lua 语言中“不等于”运算符的写法为：~=
print( 1 ~= 2)


--- 在使用“==”做等于判断时，要注意对于 table, userdate 和函数，
--- Lua 是作引用比较的。也就是说，只有当两个变量引用同一个对象时，才认为它们相等。可以看下面的例子
local a = { x = 1, y = 0}
local b = { x = 1, y = 0}
if a == b then
    print("a==b")
else
    print("a~=b")
end

--- 注意：所有逻辑操作符将 false 和 nil 视作假，其他任何值视作真，
--- 对于 and 和 or，“短路求值”，对于 not，永远只返回 true 或者 false
--- and or not
local c = nil
local d = 0
local e = 100
print(c and d)
print(c or e)
print(not c)
print(not b)

--- 字符串

print("hello " .. "word")
print(0 .. 1)
local str1 = string.format("%s-%s","hello","word")
print(str1)

str2 = string.format("%d-%s-%.2f",123,"world",1.21)
print(str2)

local prices = {}

for i = 1, 10 do
    prices[i] = i
end

local res = table.concat(prices)
print(res)

--[[local aa = table_new(1024);
for i = 1, 10 do
    aa[i] = i
end
print(table.concat(aa))]]






