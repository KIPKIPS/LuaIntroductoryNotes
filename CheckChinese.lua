---匹配中文字符
--[[function MatchChinese(s)
    local ret = {};
    local f = '[%z\1-\127\194-\244][\128-\191]*';
    local line, lastLine, isBreak = '', false, false;
    for v in s:gfind(f) do
        table.insert(ret, { c = v, isChinese = (#v ~= 1) });
    end
    return ret;`
end]]
-----以只读方式打开文件
-- 以只读方式打开文件
file = io.open("TestText.lua", "r")
str=file:read("*a")
print(str)
-- 关闭打开的文件
file:close()
print('---------------------------------------------------')
---匹配中文字符串
function MatchChinese(str)
    for s in string.gfind(str,'"(.-)"') do
        if string.match(s,"[%z\1-\127\194-\244][\128-\191]+")~=nil then
            print(s)
            print(string.find(str,s))
        end
    end
end
MatchChinese(str)