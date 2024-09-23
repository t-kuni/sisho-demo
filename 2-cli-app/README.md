# CLI App Generation Demo

This demo creates a CLI application (Job) that runs on Node. The code is generated according to the specifications at the bottom of this page. You can get different results by modifying the specifications and generating the code again.

# Usage

Clone the repository.

```bash
git clone git@github.com:t-kuni/sisho-demo.git
cd sisho-demo/2-cli-app
```

Install the [Sisho](https://github.com/t-kuni/sisho).

```bash
GOPROXY=direct go install github.com/t-kuni/sisho@master
````

Generate codes.

```bash
export ANTHROPIC_API_KEY="YOUR_API_KEY"
sisho make infrastructure/index.js usecase/index.js command/index.js usecase/index.spec.js -a
```

Run the job.

```bash
npm install
node command/index.js 5 90
```

# Job Specification

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