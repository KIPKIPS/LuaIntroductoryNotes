---������
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

--for �����б� in ��������,״̬����,���Ʊ��� do
	--ѭ����
--end

---��������
--1.���õ�������(��״̬�����Ϳ��Ʊ�����Ϊ�������ݸ���������)
--״̬����ֻ���ڵ�һ�ε���ʱ��ֵ
--2.�����������ķ���ֵ����nil,�˳�ѭ���б�
--������nil�Ļ�,�ѷ���ֵ���������б�,��ִ��ѭ����

function square(state,control)
    if control>=state then
	    return nil
	else
	    control=control+1
	    return control,control*control
    end
end

for i,j in square,10,0 do
    print(i.." ��ƽ����: "..j)
end
