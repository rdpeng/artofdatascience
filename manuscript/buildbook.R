## Build Book

chapters <- readLines("Book.txt")
chap.rmd <- sub("\\.md$", ".Rmd", chapters)
use <- file.exists(chap.rmd)
chap.rmd <- chap.rmd[use]
chapters <- chapters[use]

library(knitr)
source("fixmath.R")

for(i in seq_along(chap.rmd)) {
        fi.rmd <- file.info(chap.rmd[i])
        fi.md <- file.info(chapters[i])
        if(fi.rmd$mtime > fi.md$mtime) {
                message("knitting ", chap.rmd[i], "...")
                knit(chap.rmd[i], quiet = TRUE)

                if(chap.rmd[i] %in% c("formalmodeling.Rmd", 
                                      "causalinference.md"))
                        fixmath(chapters[i])
                if(chap.rmd[i] == "inference.Rmd")
                        system(sprintf("./equation.pl %s", chapters[i]))
        } else 
                message("skipping ", chap.rmd[i], "...")
}
