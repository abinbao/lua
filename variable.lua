#!/usr/local/bin/lua

-- 变量 --
a = 5 -- 全局变量 --
local b = 10 -- 局部变量 --

function test()
    c = 15
    print(a)
    print(b)
end
print(c)
test()

-- 代码块? --
do
    d = 6
    local e = 1111
end
print(d)
print(e)

-- 循环1 while --
print("-----------while--------")
aa = 10
while(aa > 0) do
    print("aa 的值:",aa)
    aa = aa-1
end

-- 循环2 for --
print("-----------for-----------")
for i=1,10,1 do
    print(i)
end

-- 循环3 repeat --
a = 10
repeat
    print("a 的值:",a)
    a = a + 1
until(a>15)
