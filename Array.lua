--[[
array={"asdf","fsdaf","sadf"}
for i=1,3 do
    print(array[i])
end

--arrayµÄ±éÀú
array={}
for i=-5,-1 do
    array[i]=-i
end
for i=-5,-3 do
    print(array[i])
end

--]]

--[[
array={{"xm","xh"},{"xl","xa"},{"zs","ls"},{"wmz","nm"}}
--print(array[1][2])

for i=1,4 do
    for j=1,2 do
	    print(array[i][j])
	end
end
--]]

--
array={{},{},{}} --
for i=1,3 do
    for j=1,3 do
	    array[i][j]=i+j;
	end
end

array={}
for i=1,3 do
    array[i]={}
    for j=1,3 do
	    array[i][j]=i+j;
	end
end
for i=1,3 do
    for j=1,3 do
	    print(array[i][j].."???")
	end
end
