--[[
a=5
print(type(a))
a="hello"
print(type(a))

local b=10
print(b)

local a=2
print(a)
--]]

--[[
function test()
    c=5
	local d=5
	print(c)
end
do
    test()
	local a=2
	b=1
end

print(c)
print(d)
print(c,d)

print(a)
print(b)
--]]

a,b,c,d=20,10,"asda"
print(a,b,c,d)

--交换a,b的值
a,b=b,a

c,d=10,"fgjh",21
--赋值时多余的值会被忽略
