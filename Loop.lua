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
--ÊýÖµ
for i=0,10,3 do
    print(i)
end

--·ºÐÍ
tab={k1=1,k2=2,k3=3}
for k,v in pairs(tab) do
    print(k,v)
end
--]]
a=1
repeat
    print(a)
	a=a+1
until(a>5)
