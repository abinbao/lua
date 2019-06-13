-- 元表
mytable = {"banana","orange","apple"}
mymetatable = {"test1"}

-- 设置 mymetatable 为 mytable 的原表
setmetatable(mytable,mymetatable)

print(mytable)

for k,v in pairs(mytable) do
    print(k,v)
end


-- getmetatable 返回mytable原表 mymetatable
print("------------getmetatable-------------")
for k,v in pairs(getmetatable(mytable)) do
    print(k,v)
end


-- __index 元方法
print("-------------__index------------")
other = {foo = 3}
t = setmetatable({},{__index=other})
print(t.other)
print(t.foo)

-- __index 调用函数
print("--------------__index function-----------")
mytable = setmetatable({key1 = "value1"},{
    __index = function(mytable,key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})

print(mytable.key1,mytable.key2)
