
print("你好 Test.lua")

function test3( ... )
    print("----- test so1")
    package.cpath = "luaclib/?.so" --so搜寻路劲
    local f = require "so1" -- 对应luaopen_myLualib中的myLualib
 
    f.test1(123)
    f.test2(132)
    --f.test3(456, "yangx")
end
 
test3()