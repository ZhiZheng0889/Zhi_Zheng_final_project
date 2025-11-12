# Data Visualization for Exploratory Data Analysis

Weather (TPA 2022) and text (RateMyProfessors) exploration with multiple visualization techniques in R.

## Contents
- `Zheng_project_03.Rmd` — source analysis (R Markdown)
- `Zheng_project_03.html` / `Zheng_project_03.md` — rendered outputs
- Figures referenced below live in `../figures/`

## Data
- Weather: `data/tpa_weather_2022.csv`
- Text: `data/rmp_wit_comments.csv`

## Requirements
R packages used:
`tidyverse`, `lubridate`, `ggridges`, `viridis`, `tidytext`, `topicmodels`, `wordcloud`, `igraph`, `ggraph`, `tm`, `ggrepel`, `RColorBrewer`, `rmarkdown`.

Install everything at once:

```
Rscript scripts/install_packages.R
```

## Run / Reproduce
Option A — Render all projects:

```
Rscript scripts/render_all.R
```

Option B — From R/RStudio, open and knit `project-03/Zheng_project_03.Rmd`.

## Visualizations

### Max Temperatures Histogram by Month
![Max Temperatures Histogram by Month](../figures/histogram_plot.png)

### Density Plot of Max Temperatures
![Density Plot of Max Temperatures](../figures/density_plot.png)

### Density Plots for Each Month in 2022
![Density Plots for Each Month in 2022](../figures/density_facet_plot.png)

### Maximum Temperatures for Each Month in 2022
![Maximum Temperatures for Each Month in 2022](../figures/ridges_plot.png)

### Daily Precipitation in 2022
![Daily Precipitation in 2022](../figures/precipitation_plot.png)

### Word Cloud
![Word Cloud](../figures/word_cloud.png)

### Network Visualization of Commonly Used Terms
![Network Visualization of Commonly Used Terms](../figures/network_plot.png)

### Sentiment Analysis of RateMyProfessors Comments
![Sentiment Analysis of RateMyProfessors Comments](../figures/sentiment_analysis_plot.png)

### Top Terms in Each Topic
![Top Terms in Each Topic](../figures/topic_modeling_plot.png)

## Acknowledgments
- Florida State University's Florida Climate Center for weather data.
- RateMyProfessors for comments data.
- RStudio and the R community for the tools and packages used.

