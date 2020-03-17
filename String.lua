---'' "" [[]] 多行字符串

--- /n //  /" /' 转义字符

---string常见函数操作
--[[
str="aaaBBB123"
s=string.upper(str)
print(s)

s=string.gsub(str,"aB","")
print(s)

s=string.gsub(str,"a","c",1) --最后一个参数表示替换次数
print(s)

index=string.find(str,"BBB",2) --最后一个参数表示起始索引
print(index)

s=string.reverse(str)--字符串翻转
print(s)


n1,n2=4,5
s=string.format("加法运算:%d+%d=%i",n1,n2,(n1+n2))
print(s)

s=string.format("select * from user where username= '%s' and password= '%s'","wkp","111111")
print(s)

--]]

d=1
m=22
y=1998
s=string.format("日期:%02d/%02d/%08d",d,m,y)
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
