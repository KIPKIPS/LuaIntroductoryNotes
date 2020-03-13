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

--ÀàC#Î¯ÍĞ
tab={k1="v1",k2="v2",k3="v3"}
function f1(k,v)
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



