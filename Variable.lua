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

--����a,b��ֵ
a,b=b,a

c,d=10,"fgjh",21
--��ֵʱ�����ֵ�ᱻ����
