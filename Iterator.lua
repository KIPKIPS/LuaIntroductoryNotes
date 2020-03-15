--迭代器
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
