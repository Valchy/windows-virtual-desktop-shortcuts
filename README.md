# windows-virtual-desktop-shortcuts
A small project to fix my frustrations with Windows not having a specific shortcut for each virtual desktop.  

With this script, you are able to switch between four different virtual desktops  
in windows using the shortcut: `alt+NUMBER` where `NUMBER` is `1,2,3 or 4`.

## Step 1: Install AutoHotkey
This script uses the AutoHotkey windows library so, please  
download [autohotkey](https://www.autohotkey.com/) in order to run the script.

## Step 2: Edit shortcuts as pleased
Open the `main.ahk` file in your favourite code editor to make any shortcut changes.

## Step 3: Place the script in the startup folder
If you want the script to run on windows startup please `copy+paste` the file inside  
this directory: `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`

Pro tip: use `WIN+R` and paste the path from above to open the directory location.

## Step 4: Enjoy
Be blessed with easy virtual desktop switching :)

### Note
If a virtual desktop switch occurs without using the program's shortcuts it will  
result in having to click two-three times a given shortcut in order to refresh the  
program's state but trust me that's still better than clicking `WIN+(left|right)arrow`.

### Any troubles?
1. Open the `main.ahk` file and check the code
2. Use the debugging `alt+` shortcut
3. Read the AutoHotkey [documentation](https://www.autohotkey.com/docs/AutoHotkey.htm)