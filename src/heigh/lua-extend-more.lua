---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by yanghl.
--- DateTime: 19/9/4 下午2:35

local s_base = require("./heigh/lua-extend-base")

local _M = {}

_M = setmetatable(_M,{__index = s_base})


function _M:lower(s)
    return string.lower(s)
end

return _M



