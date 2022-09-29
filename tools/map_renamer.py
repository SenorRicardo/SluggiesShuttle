
from subprocess import call
from sys import argv, exit
from os import chdir, getcwd, listdir, lseek, mkdir, path, rename
from winreg import HKEY_CURRENT_USER, OpenKey, QueryValueEx

# NOTES: REMAKE IN C++

LINE = "----------------------------------------"
DELL = """                  ....,;,.              
              .,:ldxxxkkkdc;'.          
            'lxkkkkkkkkkxxkxdl,.        
           ;xkkkOOOkkkkkxkkxxxd:.  .... 
          ,dkkkkOOOOkkxxxkxxxdoc,...... 
         .lkkkkkkOkkkkxxxxxxxoc,'...... 
        .:odxxxxkkkkkkkkxxxxxdl,'...... 
    .. ....''''',;;;;:cccclllooc;'..... 
 ..........,:,.......',.......,,,'......
 ..........:ddc;,,,;:oo;.....;;.........
 ..........,lodddddlclc::cc,,:'.........
 ...........,loooodddollc:;',,..........
 ...........'cllddodxddoc::'.,'.....''..
 ...........,cclooooollc:;,'''.......'..
 .........,',cc:cclcccc:,....,,''....'..
 .....',;:c;,odc;'''''..  ...':;,''.....
...';:cllllclxkxdc;'...   ...,:,;::,'''.
.'';llllllllldkkxxdool:,.....;:;,:cc:,'.
.,;:cccccllllldxxxxddddlc;'';::;,;cc:;,.
......''''',,',;;;;;;,,,,'...'....''...."""
a = "fart"

def main():
    args = argv[1:] # otherwise the script name is included

    if not args:
        no_input()

    if len(args) == 1 and args[0][-4:] == '-h':
        help()

    elif len(args) == 3 and args[1] == "-o":
        
        if args[2][-4:] == ".bsp":
            temp_first_name = args[0].split("maps")
            first_name = temp_first_name[1][1:]
          
            if first_name == args[2]:
                dupe_name()
            else:
                print(f"Converting {first_name} to {args[2]}.")
                map_workflow(args[0], args[2])
        else:
            invalid_name()
    else:
        for arg in args:
            if arg[-4:] == ".bsp":
                map_name = input("What is the new name for this map?\n")
                map_workflow(arg, map_name)
            else:
                print(f"Ignoring file \"{arg}\"")
    
def map_workflow(map_path, map_name):
    bspzip_path = find_bspzip()
    workspace = getcwd()

    temp_first_name = map_path.split("maps")
    original_name = temp_first_name[1][1:]
        
    if map_name[-4:] != ".bsp":
        map_name += ".bsp"

    if not path.isdir("temp"):
        mkdir("temp")

    chdir(bspzip_path)

    extract_files(map_path, workspace + "/temp")

    rename_files(map_name, workspace + "/temp", original_name)

def find_bspzip():
    
    try:
        hkey = OpenKey(HKEY_CURRENT_USER, "SOFTWARE\\Valve\\Steam")
    except Exception as e:
        hkey = None
        print("Steam was not found, check to see if you have it installed or check your registry editor.")
        print(e)
    try:
        steam_path = QueryValueEx(hkey, "SteamPath")
    except Exception as e:
        steam_path = None
        print("Unable to locate \'SteamPath\' in registry, please make sure Steam is fully installed.")
        print(e)

    temp_path = steam_path[0] + "\\steamapps\\common\\Source SDK Base 2013 Multiplayer\\bin\\bspzip.exe"

    if (path.exists(temp_path)):
        bspzip_path = temp_path[:-10]
        print(f"Detected bspzip in \'{bspzip_path}\'")
        return bspzip_path
    else:
        print("The file 'bspzip.exe' does not exist in this directory. Sorry!")
        print("Please make sure Source SDK 2013 multiplayer is fully installed.")
        exit()

def extract_files(map_path, temp_path):
    if (path.exists("bspzip.exe")):
        call(f"./bspzip -extractfiles \"{map_path}\" \"{temp_path}\"")

def rename_files(map_name, workspace, original_name):

    for filename in enumerate(listdir(workspace)):
        if filename in map_name:
            
        dst = f"Hostel"
        src =f"{workspace}/{filename}"  # foldername/filename, if .py file is outside folder
        dst =f"{workspace}/{dst}"
         
        # rename() function will
        # rename all the files
        rename(src, dst)

def embed_files():
    print(a)

# dialogues

def no_input():
    print("Please drag a map file, \'.bsp\' onto this script to run it properly.")
    print("Or use the command line to specify the map file. i.e. \x1B[3mpython map_renamer.py mapname.bsp\033[0m")
    input("Press enter to close this prompt\n")

def invalid_name():
    print("Please enter a valid file name to change to, it must have .bsp at the end.")
    print("Format:\t\x1B[3m python map_renamer.py mapname.bsp -o newmapname.bsp\033[0m")

def dupe_name():
    print("Entered the same name twice.")
    print("The purpose of this app is to change map names not clone them.")
    print("Type \x1B[3mpython map_renamer.py -h\033[0m for more info.")

def help():
    print(LINE)
    print(DELL)
    print(LINE)
    print("HOWDY PARDNER, SEEMS LIKE YOU\'RE IN A TIGHT SPOT!")
    print(LINE)
    response = input("Press enter to continue\n")
    if response:
        print(f"{response} TO YOU TOO")
    print(LINE)
    print("ALL OF THE FOLLOWING SHOULD COME AFTER YOU TYPE:")
    print("\n\x1B[3mpython map_renamer.py\033[0m\n")
    print(LINE)
    print("-h                           | For help! So helpful!")
    print("mapname.bsp -o newname.bsp   | This will convert the map to the new name!")
    print("mapname.bsp secondmap.bsp ...| If you enter multiple maps it will iterate each one!")
    print(LINE)
    print("\t\t\t\t\tWARNING:")
    print("\tYOU MUST USE THE FULL PATH FOR THE SOURCE IF YOU ARE USING '-o' FROM COMMAND LINE")
    print("THE MAP FILE YOU WANT TO RENAME MUST BE INSIDE A SOURCE MOD WITH 'gameinfo.txt' IN THE ROOT DIRECTORY")
    print(LINE)
    print("   \x1B[3mIf you don't write a new name following '-o' it will ask you for one.\033[0m")
    print("\t\x1B[3mThe program also ignore's anything that isn't a .bsp.\033[0m")
    print(LINE)

if __name__ == "__main__":
    main()
