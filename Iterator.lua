--������
arr={"lua","c#","java",k1="c++","python","c","golang",k2="mysql",k3=nil,"shaderlab"}
--pairs����arr,�������м�ֵ��
for k,v in pairs(arr) do
	print(k.." "..v)
end

--ipairs����arr�ĵ�����ֵ,����nil(��nilΪ��ֵ�Ե�ֵ,��ֹͣ,������)��ֹͣ����
--������ֵ��������
for k,v in ipairs(arr) do
    print(k,v)
end
