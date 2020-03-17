---迭代器
arr={"lua","c#","java",k1="c++","python","c","golang",k2="mysql",k3=nil,"shaderlab"}
--pairs遍历arr,遍历所有键值对
for k,v in pairs(arr) do
	print(k.." "..v)
end

--ipairs遍历arr的单索引值,遇到nil(若nil为键值对的值,则不停止,仅跳过)就停止遍历
--遇到键值对则跳过
for k,v in ipairs(arr) do
    print(k,v)
end

--for 变量列表 in 迭代函数,状态变量,控制变量 do
	--循环体
--end

---迭代函数
--1.调用迭代函数(把状态变量和控制变量作为参数传递给迭代函数)
--状态变量只会在第一次调用时赋值
--2.若迭代函数的返回值返回nil,退出循环列表
--若不是nil的话,把返回值赋给变量列表,并执行循环体

function square(state,control)
    if control>=state then
	    return nil
	else
	    control=control+1
	    return control,control*control
    end
end

for i,j in square,10,0 do
    print(i.." 的平方是: "..j)
end
