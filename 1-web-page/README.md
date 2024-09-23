# Web Page Generation Demo

This demo generates a page composed of HTML, CSS, and JS. The code is generated according to the specifications at the bottom of this page. You can get different results by modifying the specifications and generating the code again.

# Usage

Clone the repository.

```bash
git clone git@github.com:t-kuni/sisho-demo.git
cd sisho-demo/1-web-page
```

Install the [Sisho](https://github.com/t-kuni/sisho). (Required [Golang](https://go.dev/doc/install))

```bash
GOPROXY=direct go install github.com/t-kuni/sisho@master
````

Generate codes.

```bash
export ANTHROPIC_API_KEY="YOUR_API_KEY"
sisho make index.html index.js index.css -a
```

Open [index.html](./index.html) in your browser.

# Page Specification

- A gallery page with an Instagram-like layout.
- Theme
  - Skeuomorphism
- Layout
  - Header
    - Icon + Site Name
    - Dummy Search Box
    - Dummy Login Button
  - Dummy Bread Crumbs
  - Content
    - Images Grid
      - Image
      - Like Button
      - Author information
  - Footer
    - Dummy Links
- Features
  - Images will be retrieved from the following source:
    - https://picsum.photos/v2/list
  - Use React for development.
  - Responsive.
  - Click on the image to enlarge.
  - Paging.