local app={
    split="/",
    path=io.popen("cd"):read(),
    output=""}
_G.switch=function(p,t)
    if t[p] then return t[p]()
    else if t["default"]then return t["default"]() else
    return false end end end
_G.bytecode=function(f)
    local r
    if switch("-run",arg)then
    else r=(io.open(app.path.."\\"..f,"rb"):read "*a"):gsub(".",function(b)return app.split..b:byte()end)end
    io.open(app.output.."\\"..f,"w+"):write(r) print(r)end
_G.class=function(a)
     end
for i,a in pairs(arg) do
    switch(a,{
        ["-byte"]=function()
            if app.output~="" then
                for f in string.gmatch(arg[i-1],'([^,]+)')do
                    bytecode(f)end
            else print("ERR 001.  Output file not defined; -out usage required")end end,
            ----if switch("-run",arg) then end
        ["-split"]=function()
            app.split=arg[i+1] end,
        ["-long"]=function()
            app.split=","end, --Add long encasing later
        ["-cls"]=function()
            os.execute("cls")end, --not compatible with linux
        ["-folder"]=function()
            app.folder=arg[i+1]end, --not compatible with linux
        ["-out"]=function()
            app.output=arg[i+1]end,
        ["-min"]=function()
            local struct,vars,func
            if switch("-keep",arg)then
                for f in string.gmatch(arg[i+1],'([^,]+)')do
                    switch(f,{
                        ["struct"]=function()struct=1 end,
                        ["vars"]=function()vars=1 end,
                        ["func"]=function()func=1 end})
                end
            else end
            print(io.open(arg[i-1],"r"):read("*a"):gsub("%-%-[^\n\r]+", ""):gsub("%-%-",""):gsub("\n",""):gsub("%s+"," "))end, --extremely simple minifier, just enough to actually work <3
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
            print("-keep     |-k |  Modifys arguments to keep certain elements of the file, such as variables.")
            print("-out      |-o |  Defines the output folder for compiled scripts.")
          --print("-dog      |-d |  dog") dog
            end})end --print("ERR 001.       Output file not defined; -out usage required")
--pint((io.open(arg[1],"rb"):read "*a"):gsub(".",function(b)return"\\"..b:byte()end))
--pint(io.open(arg[1],"rb"):read "*a")