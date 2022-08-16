import os 

def main():
    os.system('python3 global_resource_gen.py')
    os.system('python3 update_map_resources.py')
    os.system('python3 update_map_sounds.py')

if __name__ == '__main__':
    main()