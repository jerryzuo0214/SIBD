# R Version 4.3.1
# renv Version 1.0.5
renv::init(project = "./renv",bare = TRUE, restart = TRUE)

# Check renv statys
renv::status()

options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))
options(BioC_mirror="https://mirrors.westlake.edu.cn/bioconductor")
options("download.file.method"="libcurl")
options("url.method"="libcurl")

# Install pkg
renv::install("BiocManager")
renv::install("devtools")

# Seurat 4.4.0
  devtools::install_version("Matrix",version = '1.6-4', upgrade = 'never')
  devtools::install_version("SeuratObject",version = '5.0.1', upgrade = 'never')
  devtools::install_version("Seurat",version = '4.4.0', upgrade = 'never')
  BiocManager::install('clusterProfiler')
  devtools::install_github("zhanghao-njmu/SCP@b9b0eb7", upgrade = 'never') # SCP b9b0eb7 commit

devtools::install_github('satijalab/seurat-wrappers@community-vignette', upgrade = 'never')
devtools::install_version("clustree",version = '0.5.0', upgrade = 'never')
devtools::install_version("ggpubr",version = '0.6.0', upgrade = 'never')
devtools::install_version("vegan",version = '2.6-4', upgrade = 'never')

BiocManager::install(c("BiocVersion",'limma'))

remotes::install_cran("qs", type = "source", configure.args = "--with-simd=AVX2")

install.packages(c('ggcorrplot','ggthemes','readr','phylogram','dendextend','assertthat','magrittr'))
BiocManager::install("rtracklayer")


# Save the state of environment
renv::snapshot(project = "./renv_win",type = "all")

# Restore the environment. When migration occurred, this should be executed
renv::restore(project = "../renv_win")
