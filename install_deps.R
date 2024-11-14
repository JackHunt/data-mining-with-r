for (pkg in c("knitr", "lattice", "latticeExtra")) {
  install.packages(pkg)
}

for (pkg in c("cran/DMwR")) {
  remotes::install_github(pkg)
}
