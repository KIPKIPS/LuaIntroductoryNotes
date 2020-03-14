--'' "" [[]] 多行字符串

-- /n //  /" /' 转义字符

str="aaaBBB123"
s=string.upper(str)
print(s)

s=string.gsub(str,"aB","")
print(s)

s=string.gsub(str,"a","c",1) --最后一个参数表示替换次数
print(s)

index=string.find(str,"BBB",2) --最后一个参数表示起始索引
print(index)
