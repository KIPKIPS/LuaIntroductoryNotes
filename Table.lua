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
