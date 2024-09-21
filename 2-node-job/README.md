# Generate command

```bash
sisho make index.js -a
```

```bash
npm install
node index.js
```

# Job Specification

- Display progress in the standard output
- Create a result directory
  - Relative path: `results/[YYYY-MM-DDTHH:mm:ss]`
- Download 10 images based on the information from the following API
  - https://picsum.photos/v2/list
  - Save the images in the result directory
  - Display progress with a progress bar
  - File names should be `NN.png` (NN is a sequential number starting from 01)
- Rotate the images randomly between 0 and 360 degrees