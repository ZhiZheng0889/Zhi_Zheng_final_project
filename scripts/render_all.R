args <- commandArgs(trailingOnly = TRUE)

suppressPackageStartupMessages({
  library(rmarkdown)
})

projects <- c(
  "project-01/Zheng_project_01.Rmd",
  "project-02/Zheng_project_02.Rmd",
  "project-03/Zheng_project_03.Rmd"
)

for (p in projects) {
  if (!file.exists(p)) {
    message("Skipping missing file: ", p)
    next
  }
  message("Rendering ", p, " ...")
  tryCatch({
    rmarkdown::render(input = p, output_dir = dirname(p), clean = TRUE, envir = new.env())
    message("✔ Done: ", p)
  }, error = function(e) {
    message("✖ Failed to render ", p, ": ", conditionMessage(e))
  })
}

