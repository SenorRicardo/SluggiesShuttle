from os import chdir, listdir, path, getcwd
from shutil import copyfile

DIRECTORY = "tf2classic/custom/NML/maps"

def findMapRef(path):
    files = []

    for file in listdir(path):
        if "_items_game.txt" in file:
            files.append(file)

    return files
    
def makeResCopies(maps, maps_dir):
    src = "global_resources.res"
    
    for m in maps:

        map_name = m.split("_items_game.txt")
        print(map_name[0])
        dst = maps_dir + f"/{map_name[0]}.res"
        copyfile(src, dst)
    
    
def main():
    owd = getcwd()

    chdir(f"../{DIRECTORY}") # maps directory
    maps_dir = getcwd()
    maps = findMapRef(maps_dir)
    chdir(owd)
    makeResCopies(maps, maps_dir)

if __name__ == '__main__':
    main()
