--[[
tab1={} --�ձ� {}Ϊ������ʽ

tab2={k1=100,k2="v2"}
--���ַ��ʷ�ʽ
print(tab2.k1)
print(tab2["k1"])

--��ָ����ֵ,Ĭ��Ϊ1,2,3,4....
tab3={"apple","orange","pear"}
print(tab3[3])
--table�ı���
for k,v in pairs(tab3) do
 print(k.." "..v)
 end

--table�������
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
--newtab��tabָ��ͬһƬ�ڴ���
print(tab.name)
print(tab[1])
print(tab["name"])
print(newtab["name"])
print(newtab.name)
print(newtab[1])

--����tab�ÿ�,�����ͷ��ڴ�,��Ϊnewtab��ָ���Ÿ��ڴ�����
tab=nil
--print(tab.name)--����
print(newtab.name)--newtab��Ȼ���Է���

tab={"Lua","C#","Java","Python","C++"}
--tab�ַ���ƴ��
--print(table.concat(tab))
--print(table.concat(tab,"������"))
--print(table.concat(tab,"",4))

table.insert(tab,"JavaScript")--�ڱ��ĩβ�������
table.insert(tab,3,"C")--�ڱ������������������


--���ֱ���table�ķ�ʽ
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

--����
print("�����:")
table.sort(tab)
for index in pairs(tab) do
    print(index,tab[index]);
end

--�ַ����ͱȽϴ�С
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
print(Max(tab,"String"))
print(Max(num,"Number"))