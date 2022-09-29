### Table of Contentss
[Intro](#intro)
[QnA](#qna)
[Extracting cubemaps](#extracting-cubemaps)
[Embedding cubemaps](#embedding-cubemaps)
[Renaming a map](#renaming-a-map)
[Credits](#credits)

CHANGE TO EXTRACT FILES [HELP](https://developer.valvesoftware.com/wiki/BSPZIP)

# Intro
This should explain how [map_renamer.py](./map_renamer.py) works and why its necessary.

## QnA
• **Why not just change the name?**
Renaming the name of the map is not enough, there are files embedded in the `.bsp` file that still carry the old name of the file.

• **What system does this work on?**
The Map Renamer **only works on Windows** natively but running the script through [**Wine**](https://www.winehq.org/) could possibly work on Linux and Mac.

## Extracting cubemaps
In cases where a map has to be recompiled with minor changes and its built cubemaps vanish as a result, extracting them beforehand will make it not necessary to go through the whole cubemap-building process again until it actually becomes so. To extract its cubemaps with `BSPZIP`, create a folder that will contain the extracted cubemaps inside the "maps" one, then execute the following command:
```
..\..\bin\bspzip -extractcubemaps mapname.bsp "foldername"
```
***Note:** Replace `mapname` with the map's actual name, and `foldername` with the actual name of the folder to extract cubemaps into.*


## Embedding cubemaps
To make a map use extracted cubemaps, create a text file that will be used by `BSPZIP` - the file should be created inside the "maps" folder, and will contain paths to the files to embed into the map file. The file's content should be like this:
```
materials/maps/mapname/c-128_384_64.hdr.vtf
foldername\materials\maps\mapname\c-128_384_64.hdr.vtf`
materials/maps/mapname/c-128_384_64.vtf
foldername\materials\maps\mapname\c-128_384_64.vtf
materials/maps/mapname/c448_-256_64.hdr.vtf
foldername\materials\maps\mapname\c448_-256_64.hdr.vtf
materials/maps/mapname/c448_-256_64.vtf
foldername\materials\maps\mapname\c448_-256_64.vtf
materials/maps/mapname/cubemapdefault.vtf
foldername\materials\maps\mapname\cubemapdefault.vtf
```
***Note:** Replace `mapname` with the map's actual name, the cubemaps' filenames with correct ones, and `foldername` with the actual name of the folder that contains the extracted cubemaps.*

A file requires two dedicated lines (paths): the first line represents the path it will use within the map file, while the second one is the actual location of the file to embed into the map file. Relative location paths were used for the example, but they can also be absolute. Once the text file is ready, execute the following command:
```
..\..\bin\bspzip -addlist mapname.bsp textfile.txt newmapname.bsp
```
***Note:** Replace `mapname` with the map's actual name, `textfile` with the text file's actual name, and `newmapname` with either the map's actual name, or a new name not to overwrite the original file (and instead create a separate one).*

## Renaming a map
Built cubemaps are saved into a folder within the map file that uses its name; renaming it will cause the cubemaps not to load alongside the map, and therefore it will act as if there were none. To fix that, either delete then rebuild the cubemaps, or extract then embed them back (with their folder's name matching that of the map).

### Credits
Taken from [the Valve developer wiki](https://developer.valvesoftware.com/wiki/Cubemaps)