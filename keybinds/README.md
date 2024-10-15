# Keybinds
Map CapsLock + ijkl to arrow keys, including enabling cmd and opt modifiers.
This allows home-row typing without moving your right hand to use the arrow 
keys. Plus, support text highlighting with the shift key plus any 
combinations above. We use the [Karabiner-Elements](https://karabiner-elements.pqrs.org/) 
keybind customizer for MacOS and [AutoHotkey](https://www.autohotkey.com/) for 
Windows.

## Karabiner Elements
### Simple Modifications
First, swap the positions of cmd and control on Mac to match 
the Windows keyboard layout (purely personal choice). Set these
keybindings in Karabiner-Elements' Simple Modifications tab. <br>

**Apple Internal Keyboard** <br>
left_command : left_control <br>
left_control : left_command <br>

**Nuphy Air75 with the physical OS switch set to WIN**<br>
left_command : left_option <br>
left_control : left_command <br>
left_option : left_control


### Complex Modifications JSON files
Add the included JSONs to Karabiner-Elements' Complex 
Modifications. <br>
CapsLock + ijkl : arrow keys <br>
Cmd + ijkl : Jump to top, beginning of line, EOF, end of line <br>
Opt + jl : Jump to beginning of word, end of word <br>
Shift + combo above : syntax highlighting <br>
Alt tabbing: map left_control + tab to left_command + tab


## AutoHotkey
Install AutoHotkey and open the included .ahk file. Windows should recognize 
AutoHotkey as the default application for the .ahk file extension and run the 
AutoHotkey script as a background process.
