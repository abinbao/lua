-- 定义一个 model 的模块 --
module = {}
-- 定义常量
module.constant = "constant"
-- 定义函数
function module.func1()
    io.write("public")
end
local function func2()
    print("private")
end
function module.func3()
    func2()
end

return module