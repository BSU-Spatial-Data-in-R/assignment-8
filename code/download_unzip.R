## Loading this into your workspace should let you download zipfiles into your directory and load
# You have to specify link as a character string
# so it might look like

#fs.shapefile <- download_unzip_link(link = "link to your webpage")

download_unzip_read(link){
  tmp <- tempfile()
  download.file(link, tmp)
  tmp2 <- tempfile()
  unzip(zipfile=tmp, exdir=tmp2)
  shapefile.sf –read_sf(tmp2)
  }


