# rhlib
Radiohead Public Library Experiments

---
## Experiment 1: Download all videos

## Works on
1. Mac OS ✓
2. Ubuntu ✓
3. Windows ? (please adapt it and push a PR)

## Dependencies
1. [curl](https://curl.haxx.se/download.html) (probably already present in your system)
2. [jq](https://stedolan.github.io/jq/download/) (probably already present in your system)
3. [youtube-dl](https://youtube-dl.org/) (make sure you have the latest version, running ```youtube-dl -U```)

## Installation
1. Install the dependencies above
2. Pull this repo or get both bash scripts
3. Make both scripts executable:

   a. ```chmod +x get.sh```
   
   b. ```chmod +x process.sh```

## Usage
Run ```get.sh```, and then ```process.sh```:
1. ```./get.sh``` (gets video info. from the Radiohead site)
2. ```./process.sh``` (downloads the videos from Vimeo and Youtube)
   
## Results
The videos will be downloaded to the ```./video/``` folder

---

## Experiment 2: Browse all concerts on a map
[https://www.rhlib.com](https://www.rhlib.com)