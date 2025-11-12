pkgs <- c(
  # Core
  "rmarkdown", "tidyverse", "ggplot2", "lubridate", "viridis",
  # Visualization and interactivity
  "plotly", "htmlwidgets", "ggridges", "ggrepel", "ggraph",
  # Spatial
  "sf", "tigris", "rnaturalearth",
  # Modeling/utilities
  "broom", "reshape2",
  # Text mining
  "tidytext", "topicmodels", "tm", "wordcloud",
  # Graphs/colors
  "igraph", "RColorBrewer"
)

pkgs <- unique(pkgs)

is_installed <- function(p) {
  suppressWarnings(requireNamespace(p, quietly = TRUE))
}

to_install <- pkgs[!vapply(pkgs, is_installed, logical(1))]

if (length(to_install)) {
  message("Installing packages: ", paste(to_install, collapse = ", "))
  install.packages(to_install, dependencies = TRUE)
} else {
  message("All required packages are already installed.")
}

