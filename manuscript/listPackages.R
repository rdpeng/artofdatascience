library(dplyr, warn.conflicts = FALSE)
local({
        files <- dir(pattern = glob2rx("*.Rmd"))
        code <- lapply(files, readLines) %>% unlist
        r <- regexec("^library\\((.*?)\\)", code, perl = TRUE)
        m <- regmatches(code, r)
        u <- sapply(m, length) > 0
        pkgs <- sapply(m[u], function(x) x[2]) %>% unique

        int <- installed.packages()[, 1]
        need <- setdiff(pkgs, int)
        if(length(need) > 0L) {
                install.packages(need)
        }
})

