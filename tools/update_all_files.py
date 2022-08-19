import global_resource_gen
import update_map_resources
import update_map_sounds

def main():
    global_resource_gen.run()
    update_map_resources.run()
    update_map_sounds.run()

if __name__ == '__main__':
    main()