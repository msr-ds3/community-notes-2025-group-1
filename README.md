# Replication of "Community-Based Fact-Checking on Twitter’s Birdwatch Platform"

This repository contains our replication and analysis of the paper:
> **"Community-Based Fact-Checking on Twitter’s Birdwatch Platform"**  
> *Nicolas  Prollochs (2021)*  
> [Link to paper](https://arxiv.org/pdf/2104.07175)

## Objective
We aim to replicate the key findings and methodology from the Birdwatch paper by Lorch et al., which explores how **community-based fact-checking** can be used to combat misinformation on social media. The paper specifically examines Twitter’s Birdwatch platform, where users collaboratively write and rate notes to provide context to potentially misleading tweets.


## How to Reproduce

1. Clone the repository:
   ```bash
   git clone https://github.com/msr-ds3/community-notes-2025-group-1.git
2. Run Data Collection & Filtering Scripts <br>
Make sure you have a Unix environment with bash, curl, and jq installed.
  ``` bash
  # Step 1: Download notes data
  bash 01_download_notes_data.sh
 
  # Step 2: Filter the notes data
  bash 02_filter_notes_data.sh
 
  # Step 3: Download Birdwatch ratings
  bash 03_download_ratings_data.sh
 
  # Step 4: Filter the ratings data
  bash 04_filter_ratings.sh
  ```

3.  Run the Analysis Notebook
   
Run 05_final_report.Rmd using any R environment that supports R Markdown.

You can also run it with the saved workspace:
``` r
load("source_tweets.RData")
rmarkdown::render("05_final_report.Rmd")
```
This will generate 05_final_report.html with all the results and figures.

#### Optionally, you can view the rendered report [here](https://rpubs.com/shresthadrishya06/1325154).

