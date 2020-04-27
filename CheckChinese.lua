---匹配中文字符
----- 以只读方式打开文件
file = io.open("TestText.lua", "r")
for line in io.lines("TestText.lua") do
    print(line)
end
function ChineseCheck(s)
    local ret = {};
    local f = '[%z\1-\127\194-\244][\128-\191]*';
    local line, lastLine, isBreak = '', false, false;
    for v in s:gfind(f) do
        table.insert(ret, {c=v,isChinese=(#v~=1)});
    end
    return ret;
end
for k, v in ipairs(CheckChinese('a中fj文b+')) do
    print(k,v.c,#v.c,v.isChinese);
end