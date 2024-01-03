
# Tile cutter for libvips library

This project is a simple .bat file I have created to automate creating tiles from images for things like google maps and leafletJS.

**Note: Make sure you have VIPS installed. You can obtain it from https://github.com/libvips/libvips**


## Documentation

To use this .bat file, follow these steps:

1. Place the entire tileCutter folder in the vips folder, alongside other directories.

**example:**
```
bin
etc
tileCutter

```

2. Ensure that the images you want to cut are placed inside the tileCutter images folder.

**tileCutter directory structure**
```
tileCutter:
-images
-tiles
tileCutter.bat

```


3. Run the script. It will display a simple menu to help you choose images to process if you have more than one in the folder.
4. The cutting process, powered by VIPS, is fast even with 8k images. The tiles will be stored in a folder named after the cut image, located within the "tiles" directory.









## Zoom levels

The zoom levels are the size of an image. Zoom level 0 mean that whole image will be displayed in a 256x256px square(single tile). With every zoom level the square size is multiplied by 2.

To obtain the zoom level that you want your image has to fit into the zoom level square, the image itself doesn`t have to be square.

This is the table that will help you choose your zoom level. Personally I don`t think I would go above level 7. 

| Zoom level        | Size in px                                          |
| ----------------- | ------------------------------------------------------------------ |
| zoom levle 0 | 256 x 256 |
| zoom levle 1 | 512 x 512 |
| zoom levle 2 | 1024 x 1024  |
| zoom levle 3 | 2048 x 2048 |
| zoom levle 4 | 4096 x 4096 |
| zoom levle 5 | 8192 x 8192 |
| zoom levle 6 | 16384 x 16384  |
| zoom levle 7 | 32768 x 32768 |



