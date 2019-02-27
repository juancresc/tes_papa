install.packages("devtools")
library(devtools)
devtools::install_github('TickingClock1992/RIdeogram')

require(RIdeogram)

setwd("/Users/juan/Documents/manu/dev/vms/bio/TEs_papa/data/")
#data(human_karyotype, package="RIdeogram")
#data(gene_density, package="RIdeogram")
#data(Random_RNAs_500, package="RIdeogram")
potato_karyotype <- read.table("karyotype.txt", sep = ",", header = T, stringsAsFactors = F)
head(potato_karyotype)

gene_density <- read.table("LTR_ages.csv", sep = "\t", header = T, stringsAsFactors = F)
head(gene_density)

ideogram(karyotype = human_karyotype, overlaid = gene_density)
convertSVG("chromosome.svg", device = "png")

getwd()
