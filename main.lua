_G.switch = function(param, case_table)
    local case = case_table[param]
    if case then return case() end
end
print(tostring(arg))
print(arg[1])
for i,a in pairs(arg) do
    
    switch(a,{["bytes"]=function()print("ran") end})
end
--print((io.open(arg[1],"rb"):read "*a"):gsub(".",function(b)return"\\"..b:byte()end))
--print(io.open(arg[1],"rb"):read "*a")