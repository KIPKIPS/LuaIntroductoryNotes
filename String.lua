--'' "" [[]] �����ַ���

-- /n //  /" /' ת���ַ�

--[[
str="aaaBBB123"
s=string.upper(str)
print(s)

s=string.gsub(str,"aB","")
print(s)

s=string.gsub(str,"a","c",1) --���һ��������ʾ�滻����
print(s)

index=string.find(str,"BBB",2) --���һ��������ʾ��ʼ����
print(index)

s=string.reverse(str)--�ַ�����ת
print(s)


n1,n2=4,5
s=string.format("�ӷ�����:%d+%d=%i",n1,n2,(n1+n2))
print(s)

s=string.format("select * from user where username= '%s' and password= '%s'","wkp","111111")
print(s)

--]]

d=1
m=22
y=1998
s=string.format("����:%02d/%02d/%08d",d,m,y)
print(s)

s=string.format("%+d",-15)
print(s)

s=string.format("%+d",15)
print(s)

s=string.rep("asd",4)
print(s)

s = "Deadline is 30/05/1999, firm"
--date = "%d%d/%d%d/%d%d%d%d"
--print(string.find(s, date))
print(string.sub(s, 13))

s="14hjkhsa"
print(string.match(s,"%a+",5))
