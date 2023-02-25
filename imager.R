# print image code
library(tidyverse)

fnames <- list.files(path = "images", pattern = "*.png", full.names = TRUE)



cmd <- '
```{r chunkname, fig.cap="cap", echo=FALSE}
knitr::include_graphics("xIMGx")
```'

for(f in fnames){
    cat("")
    cat(str_replace(string = cmd, pattern = "xIMGx", replacement = f))
    cat("")
}
