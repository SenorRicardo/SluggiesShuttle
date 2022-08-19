from os import chdir, walk, path, getcwd

DIRECTORY = "tf2classic"
BANNED = [".bsp", ".DS_Store", ".vpk" ".bz2", ".res"]

def absoluteFilePaths(directory):
    for dirpath,_,filenames in walk(directory):
        for f in filenames:
            yield path.abspath(path.join(dirpath, f))

def cleanOutPut(files_list, game_dir):
    clean = []
    for item in files_list:
        clean.append(item.split(game_dir)[1][1:])
    found_banned = []
    for c in clean:
        for b in BANNED:
            if b in c:
                found_banned.append(c)
    for f in found_banned:
        clean.remove(f)
    return clean

def recordResFile(clean):
    f = open("global_resources.res", "w")
    f.writelines("// File generated for use in NML servers\n")
    f.writelines("Resources\n{\n")
    for i in clean:
        f.writelines(f"\t\"{i}\"\t\"file\"\n")
    f.writelines("}")
    f.close
    
def main():
    owd = getcwd()

    chdir(f"../{DIRECTORY}") # game directory
    files_list = absoluteFilePaths(getcwd())
    clean = cleanOutPut(files_list, getcwd())

    chdir(owd)
    recordResFile(clean)

if __name__ == '__main__':
    main()
