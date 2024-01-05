
# Tile cutter for libvips library

This project is a simple .bat file I have created to automate creating tiles from images for things like google maps and leafletJS.
The tile cutter simplifies the process of creating tiles for map applications. It relies on the libvips library for efficient image processing.

**Note: Make sure you have VIPS installed. You can obtain it from https://github.com/libvips/libvips**

Before creating tiles you have to choose your zoom level, I have provided a zoom level 5 template for gimp you just have to throw your image in there and make it fit within the template. 
Adjust the size of an, ensuring the longest side is smaller by 64-128px. You can also create your template using the provided zoom levels table.
*Remember to create a template with a transparent background (alpha channel) and also add alpha channel to the image layer after resizing it*
When you are exporting the image mae sure the format is either .png or .webp (from personal experience I recommend .webp)

**So for example:**
*We have a rectangular image, 9000 x 4500, in this case, we do simple math
8192 - 64 = 8128, so the longest side must be 8128px*

## Zoom levels

The zoom levels are the size of an image. Zoom level 0 means that the whole image will be displayed in a 256x256px square(single tile). With every zoom level, the square size is multiplied by 2.

To obtain the zoom level that you want your image has to fit into the zoom level square, the image itself doesn`t have to be square.

This is the table that will help you choose your Zoom level. I don`t think I would go above level 7. 

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




