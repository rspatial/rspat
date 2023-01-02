\name{spat_data}

 
\alias{spat_data}
\alias{spat_download}


\title{
Get exampled data
}

\description{
Get and example data set
}

\usage{
spat_data(name)
spat_download(files, path="data", url="https://biogeo.ucdavis.edu/data/rspatial/")
}

\arguments{
 \item{name}{data set name}
 \item{files}{filenames to download}
 \item{path}{path (folder) to save the data to}
 \item{url}{url where the data is downloaded from}
}

\value{
A data set. Often a Spatial* object or a data.frame
}



\examples{
auctb <- spat_data("auctb")
crime <- spat_data("crime")
}


\keyword{ spatial }

