# Generate command

```bash
sisho make infrastructure/index.js usecase/index.js command/index.js -a
```

```bash
npm install
node command/index.js 5 90
```

# Command Specification

```
node command/index.js [IMAGE_COUNT] [ANGLE]
```

* [IMAGE_COUNT]: The number of images to download
  * Required
  * Acceptable values: 1-10
* [ANGLE]: The angle to rotate the images
  * Required
  * Acceptable values: 0-360
- Display progress in the standard output
- Create a result directory
  - Relative path: `results/[YYYY-MM-DDTHH:mm:ss]`
- Download [IMAGE_COUNT] images based on the information from the following API
  - https://picsum.photos/v2/list
  - Save the images in the result directory
  - Display progress with a progress bar
  - File names should be `NN.png` (NN is a sequential number starting from 01)
- Rotate the downloaded images by [ANGLE] degrees
  - Overwrite the original files

# Directory Structure

* command
  * Entry point for processing
* usecase
  * Business logic
  * Depends on infrastructure via DI
* infrastructure
  * External communication