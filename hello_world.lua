#!/usr/local/bin/lua
-- 这是单行注释 --
--[[
    mac 安装：
    1. curl -R -O http://www.lua.org/ftp/lua-5.3.0.tar.gz
    2. tar zxf lua-5.3.0.tar.gz
    3. cd lua-5.3.0
    4. make macosx test
    5. make install
    -------------------------------
    1. 配置本lua脚本可执行权限，傻瓜操作： chmod -777 hello_world.lua
    2. 看一下脚本的权限 hello_world.lua
        > ls -l
        -rwxrwxrwx  1 apple  staff  152  6 13 11:24 hello_world.lua
    3. 执行：./hello_world.lua
    -------------------------------

    这是多行注释，
    多行注释 。
]]--
print("--------------Lua--------------")
print("Hello World!")

-- 数据类型 --
print("--------------数据类型---------------")
print(type("Hello World！"))
print(type(1*0.5))
print(type(true))
print(type(nil))
print(type(print))

-- 字符串 --
print("---------------String----------------")
str = [[
    hello jay!
    hhhhhhhh...
]]
print(str)

-- table --
print("--------------table-----------------")
local tb = {}
local tb2 = {"apple","orange","banana"}

-- lua 的 table 索引是从 1 开始的
for k,v in pairs(tb2) do
    print("key",k)
end

print(tb2)
print(type(tb2))
-- .. 是字符串连接 --
a = {}
a["test"] = "helloworld"
key = 10
a[10] = 22
for k,v in pairs(a) do
    print(k .. ":" .. v)
end

-- function 函数 --
print("------------------function 函数------------------")
-- function --
function test(n)
    if n == 0 then
        return -1
    else
        return 10 /n
    end
end
print(test(5))

-- 匿名函数 --
function testFun(tab,fun)
    for k,v in pairs(tab) do
        print(fun(k))
    end
end

print(testFun(tb2,function(key)
    return (10 + key)
end
))