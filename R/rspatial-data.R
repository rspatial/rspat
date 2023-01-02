# Author: Robert J. Hijmans
# Sept 2018
# version 1
# license GPL3


spat_data <- function(name) {
	name <- paste0(tools::file_path_sans_ext(name[1]), ".rds")
	fn <- system.file(file.path("rds", name), package="rspat")
	if (!(file.exists(fn))) {
		stop(paste(name, "is not a valid data set name."))
	}
	x <- readRDS(fn)
	if (inherits(x, "PackedSpatVector")) {
		x <- terra::vect(x)
	} else if (inherits(x, "PackedSpatRaster")) {
		x <- terra::rast(x)
	}
	x
}



spat_download <- function(files, path="data", url="https://biogeo.ucdavis.edu/data/rspatial/") {
	dir.create(path, showWarnings = FALSE)
	for (filename in files) {
		localfile <- file.path(path, filename)
		if (!file.exists(localfile)) {
			utils::download.file(paste0(url, filename), dest=localfile)
		}
		if (isTRUE(grep("\\.zip$", filename))) {
			utils::unzip("data/rsdata.zip", exdir=path)
		}
	}
}

