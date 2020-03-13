--[[
function fact(n)
    if n==1 then
	return n
	else
	return n*fact(n-1)
	end
end

print(fact(7))

function fun(n)
    if n==1 then
	return "n=1"
	else
	return 6
	end
end

print(fun(1))

fun2=fun
print(fun2(1))

--]]

--ÀàC#Î¯ÍÐ
--[[
tab={k1="v1",k2="v2",k3="v3"}
local function f1(k,v)
    print(k.." : "..v)
end
function f2(k,v)
    print(k.." "..v)
end

function testFun(tab,fun)
    for k,v in pairs(tab) do
	    fun(k,v)
	end
end

testFun(tab,f1)
testFun(tab,f2)


testFun(tab,
    function (k,v)
	    print(k.."|"..v)
	end
)

temp=testFun
temp(tab,f1)
--]]

--[[
myFunc=function (n)
    print(n)
end

function NumAdd(a,b)
    print(a+b)
end
function StrAdd(a,b)
    print(a..b)
end

function Add(a,b,AddFunc)
    AddFunc(a,b)
end

Add(1,2,NumAdd)
Add("asda","afdfs",StrAdd)
--]]

function fun()
    return 1,2,3,"asda"
end
r1,r2,r3,r4=fun()
print(r1,r2,r3,r4)

