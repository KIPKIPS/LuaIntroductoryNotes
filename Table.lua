--[[
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
tab1[10]="v3"
print(tab1[10])
--]]

--[[
tab={}
tab[1]=2
tab["name"]="wkp"
newtab=tab
--newtab和tab指向同一片内存区
print(tab.name)
print(tab[1])
print(tab["name"])
print(newtab["name"])
print(newtab.name)
print(newtab[1])

--若将tab置空,不会释放内存,因为newtab还指向着该内存区域
tab=nil
--print(tab.name)--报错
print(newtab.name)--newtab仍然可以访问

tab={"Lua","C#","Java","Python","C++"}
--tab字符串拼接
--print(table.concat(tab))
--print(table.concat(tab,"王琨鹏"))
--print(table.concat(tab,"",4))

table.insert(tab,"JavaScript")--在表的末尾添加数据
table.insert(tab,3,"C")--在表的索引三处插入数据


--两种遍历table的方式
for v in pairs(tab) do
    print(tab[v])
end

for i=1,#tab do
    print(tab[i])
end
--]]

tab={"Lua","C#","C++","Python","JavaScript","Java","PHP","C"}
for index in pairs(tab) do
    print(tab[index]);
end

--排序
print("排序后:")
table.sort(tab)
for index in pairs(tab) do
    print(index,tab[index]);
end

--字符类型比较大小
function Max(tab,dataType)
    local max
    if dataType=="String" then
        max=""
    end
    if dataType=="Number" then
        max=tab[1]
    end
    for index in pairs(tab) do
        if max<tab[index] then
            max=tab[index]
        end
    end
    return max
end
num={1,34,5,345,3,2,765,758,234,21,4,432,5,25,3}
print("最大值"..Max(tab,"String"))
print("最大值"..Max(num,"Number"))