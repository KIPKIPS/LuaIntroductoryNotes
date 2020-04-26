-- %a
local str = "ab12"
print(string.gsub(str, "%a", "C"))  -- CC12 2
print(string.gsub(str, "%A", "C"))  -- abCC 2

-- %b
str = "12a<nice>bc"
print(string.match(str, "%b<>"))  -- <nice>

-- %c
str = "s12\naaa\tbb"
--print(string.gsub(str, "%c", "Y"))  -- s12YaaaYbb   2
print(string.gsub(str, "%C", "Y"))

-- ()
str = "<body>主干</body><body>主干二</body>"
print(string.match(str, "<body>.+</body>"))  -- <body>主干</body>
for s in string.gmatch(str, "<body>(.-)</body>") do
    print(s)
end


str = "ab3cc8dmf,xx"
---5-8表示5到8都可以匹配到
print(string.gsub(str, "[a5-8m-n,]", "z"))  -- zb3cczdzfzxx 4
print(string.gsub(str, "[^a5-8m-n,]", "z"))  -- azzzz8zmz,zz    8


-- ^
print(string.match("1abc", "^%d"))  -- 1
print(string.match("a1bc", "^%d"))  -- nil

-- $
print(string.match("abc1", "%d$"))  -- 1
print(string.match("ab1c", "%d$"))  -- nil


-- +
str = "ab12345ed"
print(string.match(str, "%d+"))  -- 12345

-- * -
str = "<a><b><c>"
print(string.gsub(str, "<.*>", "{ok}"))  -- {ok}    1
print(string.gsub(str, "<.->", "{ok}"))  -- {ok}{ok}{ok}    3
--[[
    说明：
    *和-比较类似，只是*进行最长匹配，而-是进行最短匹配
    所以在例子中使用*进行匹配的时候，会匹配第一个"<"到最后一个">"之间的所有内容进行替换，只匹配到了一次
    而使用-进行匹配的时候，则会第一个"<"到第一个">"之间的内容进行替换，一共匹配到了3次
]]

-- ?
print(string.match("abc100", "[+-]?%d+"))  -- 100
print(string.match("abc-100", "[+-]?%d+"))  -- -100
print(string.match("abc+100", "[+-]?%d+"))  -- +100
--[[
    说明：
    ?是匹配前一字符0次或1次
    在例子中即匹配字符类"[+-]"0次或1次，将这个匹配模式稍微改动一下，改成"^[+-]?%d+$"就可以检查这个字符串是否是整数了
]]


-- 判断字符串是否为纯数字字符串
function judgeNumString(str)
    return string.match(str, "%d+") == str
end

local str1 = "3497439"
local str2 = "83048a389b"

print(judgeNumString(str1), judgeNumString(str2))  -- true  false

-- 判断是否是手机号码(大陆)
function judgePhoneNum(str)
    return string.match(str,"[1][3-9]%d%d%d%d%d%d%d%d%d") == str
end

str1 = "13347823759"
str2 = "10348932849"
print(judgePhoneNum(str1), judgePhoneNum(str2))  -- true    false