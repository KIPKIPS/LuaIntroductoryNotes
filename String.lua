--'' "" [[]] �����ַ���

-- /n //  /" /' ת���ַ�

str="aaaBBB123"
s=string.upper(str)
print(s)

s=string.gsub(str,"aB","")
print(s)

s=string.gsub(str,"a","c",1) --���һ��������ʾ�滻����
print(s)

index=string.find(str,"BBB",2) --���һ��������ʾ��ʼ����
print(index)
