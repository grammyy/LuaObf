_G.switch = function(param, case_table)
    local case = case_table[param]
    if case then return case() end end
for i,a in pairs(arg) do
    switch(a,{["-help"]=function()
        print("-byte     |-b |  Converts scripts to their binary codes, separated -split next argument")
        print("-split    |-s |  Configures the seperating character for -b")
        print("-range    |-r |  Configures the minimal byte code for -b")
        print("-replace  |-r |  Replaces the default function for -b")
        print("-graphic  |-gc|  Sets the Obfuscator into graphical mode.")
        end})
end
--print((io.open(arg[1],"rb"):read "*a"):gsub(".",function(b)return"\\"..b:byte()end))
--print(io.open(arg[1],"rb"):read "*a")