---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by yanghl.
--- DateTime: 19/9/3 下午11:54
---


--- 在 OpenResty 的世界里，不推荐使用这里的标准时间函数，因为这些函数通常会引发不止一个昂贵的系统调用，同时无法为 LuaJIT JIT 编译，对性能造成较大影响。
--- 推荐使用 ngx_lua 模块提供的带缓存的时间接口，如 ngx.today, ngx.time, ngx.utctime, ngx.localtime, ngx.now, ngx.http_time，以及 ngx.cookie_time 等

print(os.time())

local  a = { year = 1970, month = 1, day = 1, hour = 8, min = 1 }

print(os.time(a))


-- os.difftime (t2, t1)

local day1 = { year = 2015, month = 7, day = 30 }
local t1 = os.time(day1)

local day2 = { year = 2015, month = 7, day = 31 }
local t2 = os.time(day2)

print(os.difftime(t2, t1))   -->output  86400


--- os.date ([format [, time]])
local tab1 = os.date("*t")  --返回一个描述当前日期和时间的表
local ans1 = "{"
for k, v in pairs(tab1) do  --把tab1转换成一个字符串
    ans1 = string.format("%s %s = %s,", ans1, k, tostring(v))
end

ans1 = ans1 .. "}"
print("tab1 = ", ans1)


local tab2 = os.date("*t", 360)  --返回一个描述日期和时间数为360秒的表
local ans2 = "{"
for k, v in pairs(tab2) do      --把tab2转换成一个字符串
    ans2 = string.format("%s %s = %s,", ans2, k, tostring(v))
end

ans2 = ans2 .. "}"
print("tab2 = ", ans2)

print(os.date("today is %A, in %B"))
print(os.date("now is %x %X"))
print(os.date("now is %c"))


