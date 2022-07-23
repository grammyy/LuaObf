### Functionality minor, this is in the stage of inital coding. Many features, if not all will NOT work. Do not attempt to use this as of now.
## En/De => Cryption, Compression
* Bytecode; Converts characters into their byte counterpart.

  ![Bytecode; -split ""](https://aerodata.netlify.app/packaging/bytecode.png")
* Minifier; Compresses scripts into their simplest form.
> Supported arguments: -keep
## Command table
|Arguments|Parameters|Usage|Desc|
| -- | --  | - | -- |
|-byte     |-b | {File} -byte |  Converts scripts to their binary codes, -split supported.                                                                                      |
|-min      |-m | {Files} -min |  Compresses the target files into their simplest form.                                                                                          |
|-long     |-l | -long {File} -byte |  Overrides -split for -byte, best for performance when running obfuscated files.                                                          |
|-split    |-s | -split {Char} {File} -byte |  Configures the seperating character for -byte                                                                                    |
|-range    |-rr| (Not completed) |  Configures the minimal byte code for -byte                                                                                                  |
|-replace  |-re| (Not completed) |  Replaces the default function for -byte                                                                                                     |
|-graphic  |-g | (Not Completed) |  Sets the Obfuscator into graphical mode.                                                                                                    |
|-popout   |-p | (Not completed) |  Opens the output in a seperate EXE process, doesn't affect general process.                                                                 |
|-run      |-r | (Not completed) |  Runs a obfuscated file, supported on -byte.                                                                                                 |
|-keep     |-k | (Not complete) {File} -min -keep {struct/vars/func} or {byte} -keep {struct,char} |  Modifys arguments to keep certain elements of the file, such as variables.|
|-out      |-o | -out "{Folder}" |  Defines the output folder for compiled scripts.                                                                                             |
