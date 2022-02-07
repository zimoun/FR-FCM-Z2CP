library(flowCore)

for (f in list.files(path = '.', pattern = '*.fcs', full.names=TRUE)) {
    s <- read.FCS(f)
    t <- dim(s)[[1]]
    z <- s[sample(1:t, floor(0.01*t)),]
    write.FCS(z, paste0("out/", f))
}
