local app={
    split="/"}
_G.switch = function(param, case_table)
    local case = case_table[param]
    if case then return case() end end
for i,a in pairs(arg) do
    switch(a,{
        ["-byte"]=function()
            if arg[i+1]=="-run" then
                else
                print((io.open(arg[i-1],"rb"):read "*a"):gsub(".",function(b)return app.split..b:byte()end))
            end end,
        ["-split"]=function()
            app.split=arg[i+1]end,
        ["-help"]=function()
            print("-byte     |-b |  Converts scripts to their binary codes, separated -split next argument")
            print("-long     |-l |  Overrides -split for -byte, best for performance when running obfuscated files")
            print("-split    |-s |  Configures the seperating character for -byte")
            print("-range    |-rr|  Configures the minimal byte code for -byte")
            print("-replace  |-re|  Replaces the default function for -byte")
            print("-graphic  |-gc|  Sets the Obfuscator into graphical mode.")
            print("-popout   |-p |  Opens the output in a seperate EXE process, doesn't affect general process.")
            print("-run      |-r |  Runs a obfuscated file, supported on -byte.")
            end})
end
--print((io.open(arg[1],"rb"):read "*a"):gsub(".",function(b)return"\\"..b:byte()end))
--print(io.open(arg[1],"rb"):read "*a")