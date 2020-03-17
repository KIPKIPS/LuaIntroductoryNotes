---变量的使用
--[[
if 10 then
print("true")
else
print("false")
end

if aaa then
print("true")
else
print("false")
end

a=6
if a then
print("true")
else
print("false")
end
--]]

--[[
a=2e1
a=2e+1
a=2e-2
a=2.3e-8
print(a)
--]]

---字符块
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)
print("123".."456")
print("2" + 6)
print("2" + "6")
print("2 + 6")
print("-2e2" * "6")

str="123456"
print("长度"..#str)
print(#"123456")


print(a)
