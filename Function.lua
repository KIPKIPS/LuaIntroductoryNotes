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
