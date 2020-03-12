tab1={} --空表 {}为构造表达式

tab2={k1=100,k2="v2"}
--两种访问方式
print(tab2.k1)
print(tab2["k1"])

--不指定键值,默认为1,2,3,4....
tab3={"apple","orange","pear"}
print(tab3[3])
--table的遍历
for k,v in pairs(tab3) do
 print(k.." "..v)
 end

--table添加数据
tab1.k1="v1";
print(tab1.k1)

tab1["k2"]="v2";
print(tab1.k2)

tab1["k2"]=nil
print(tab1.k2)
