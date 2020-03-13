--while
--for
--repeat until(do while)

--[[
a=1
while a<=20 do
    if a%2==1 then
        print(a)
	end
	a=a+1
end
--]]

--[[
--数值
for i=0,10,3 do
    print(i)
end

--泛型
tab={k1=1,k2=2,k3=3}
for k,v in pairs(tab) do
    print(k,v)
end
--]]

--[[
a=1
repeat
    print(a)
	a=a+1
until(a>5)
--]]

--嵌套循环
for a=1,5,1 do
    for b=1,a,1 do
	    print(a)
	end
end
