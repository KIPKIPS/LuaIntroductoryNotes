---输出变量的类型
--[[
print(type("dssd"))
print(type(13))
print(type(false))
print(type(type))
print(type(print))
print(type(nil))

--不存在的值返回nil
print(type(x))
--]]

tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " " .. v)
end
print()
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. "和" .. v)
end
