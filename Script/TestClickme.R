# Just a test

# devtools::install_github("clickme", "nachocab")

library(clickme)
clickme("points", rnorm(100))

clickme(rnorm(50))


# simple
clickme("points", 1:10)

# fancy
n <- 500
clickme("points",
        x = rbeta(n, 1, 10), y = rbeta(n, 1, 10),
        names = sample(letters, n, r = T),
        color_groups = sample(LETTERS[1:3], n, r = T),
        title = "Zoom Search Hover Click")


clickme("points", 1:10)$link()

clickme("points", formats = list(x = "$.1f", y = "%.2f", rate = ".4f"),
        x = rnorm(10, mean = 100), y = rnorm(10),
        xlab = "Price", ylab = "Percentage",
        extra = list(rate = rnorm(10)))



clickme("points", x = rnorm(100), y = rnorm(100), color_groups=as.factor(1:100))


data(microarray)
clickme("points", x = microarray$significance, y = microarray$logFC,
        color_groups = ifelse(microarray$adj.P.Val < 1e-4, "Significant", "Noise"),
        names = microarray$gene_name,
        x_title = "Significance (-log10)", y_title = "Fold-change (log2)",
        extra = list(Probe = microarray$probe_name, Essai = 2))


clickme("points", 1:10, 1e7:(1e7 + 9), padding = list(left = 150))
