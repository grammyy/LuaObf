local app={
    split="/",
    folder=io.popen("cd"):read().."\\output\\"}
_G.switch=function(p,t)
    local case=t[p]
    if case then return case()end end
_G.bytecode=function(f,d)
    local r=(io.open(d,"rb"):read "*a"):gsub(".",function(b)return app.split..b:byte()end)
    io.open(f,"w+"):write(r) print(r)end
for i,a in pairs(arg) do --Add argument checks
    switch(a,{
        ["-byte"]=function()
            local d=arg[i-1]:gmatch(",")
            if type(d)=="string" then
                if io.type(io.open(d))=="file" then
                    bytecode(app.folder..d,d)
                else
                    for _i,f in io.popen('find "'..d..'" -type f') do
                        if switch("-cls") then os.execute("cls") end --Not compatible with linux
                        bytecode(app.folder..f,d)end end
            else
                for _i,f in arg[i-1] do
                    if switch("-cls") then os.execute("cls") end --Not compatible with linux
                    bytecode(app.folder..f,d)end end
            end,
            --if switch("-run",arg) then end
        ["-split"]=function()
            if not switch("-long",arg) then
                app.split=arg[i+1]end end,
        ["-long"]=function()
            app.split=","end, --Add long encasing later
        ["-cls"]=function()
            os.execute("cls")end, --not compatible with linux
        ["-folder"]=function()
            app.folder=arg[i+1]end, --not compatible with linux
        ["-help"]=function() --Seperate into categories and function later
            print("-byte     |-b |  Converts scripts to their binary codes, separated -split next argument")
            print("-long     |-l |  Overrides -split for -byte, best for performance when running obfuscated files")
            print("-split    |-s |  Configures the seperating character for -byte")
            print("-range    |-rr|  Configures the minimal byte code for -byte")
            print("-replace  |-re|  Replaces the default function for -byte")
            print("-graphic  |-g |  Sets the Obfuscator into graphical mode.")
            print("-popout   |-p |  Opens the output in a seperate EXE process, doesn't affect general process.")
            print("-run      |-r |  Runs a obfuscated file, supported on -byte.")
            print("-min      |-m |  Compresses the target files into their simplest form.")
            print("-keep     |-k |  Modifys past argument to keep certain elements of the file, such as variables.")
            print("-cls      |-c |  Clears the screen")
          --print("-dog      |-d |  dog") dog
            print("-folder   |-f |  Defines folder. By default, uses the local output folder and output mode.")
            print("-multi    |-mm|  Specifies multiple files to process, can be assigned to entire folder, multiple folders, or multiple files.")
            end})end
--print((io.open(arg[1],"rb"):read "*a"):gsub(".",function(b)return"\\"..b:byte()end))
--print(io.open(arg[1],"rb"):read "*a")