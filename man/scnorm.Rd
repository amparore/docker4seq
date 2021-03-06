% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/casc.scnorm.R
\name{scnorm}
\alias{scnorm}
\title{Running SCnorm  normalization}
\usage{
scnorm(group = c("sudo", "docker"), data.folder = getwd(), counts.matrix,
  conditions = NULL, outputName, nCores = 8, filtercellNum = 10,
  ditherCount = FALSE, PropToUse = 0.1)
}
\arguments{
\item{group, }{a character string. Two options: sudo or docker, depending to which group the user belongs}

\item{data.folder, }{a character string indicating the folder where comma separated file of cells log10 counts is saved}

\item{counts.matrix, }{a character string indicating the the name of tab delimited file  file of cells un-normalized expression counts}

\item{conditions, }{vector of condition labels, this should correspond to the columns of the un-normalized expression matrix. If not provided data is assumed to come from same condition/batch.}

\item{outputName, }{specify the path and/or name of output files.}

\item{nCores, }{number of cores to use, default is detectCores() - 1.}

\item{filtercellNum, }{the number of non-zero expression estimate required to include the genes into the SCnorm fitting (default = 10). The initial grouping fits a quantile regression to each gene, making this value too low gives unstable fits.}

\item{ditherCount, }{FALSE of TRUE. Settin gto TRUE might improve results with UMI data}

\item{PropToUse, }{as default is set to 0.25 but to increase speed with large data set could be reduced, e.g. 0.1}
}
\value{
a PDF providing a view of effects of normalization, a Rda file containing the full output of **SCnorm** and a tab delimited file containing the normalized data.
}
\description{
This function is a wrapper for SCnorm: robust normalization of single-cell RNA-seq data (Bacher et al. Nature Methods 2017, 14:584–586)
}
\examples{
\dontrun{
    #downloading fastq files
    system("wget http://130.192.119.59/public/singlecells_counts.txt.gz")
    system("gzip -d singlecells_counts.txt.gz")
    conditions=rep(1,288)
    scnorm(group="docker", data.folder=getwd(),counts.matrix="singlecells_counts.txt",
    conditions=conditions,outputName="singlecells_counts", nCores=8, filtercellNum=10, ditherCount=TRUE, PropToUse=0.1)
}
}
