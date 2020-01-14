FROM bioconductor/release_core2:R3.6.0_Bioc3.9 
 
#install additional packages
RUN install2.r \
   -d TRUE \
   -r "https://cran.rstudio.com" \
   -r "http://www.bioconductor.org/packages/release/bioc" \
   RColorBrewer \
   GEOquery \
   BiocGenerics \
   ComplexHeatmap \
   biomaRt \
   GEOmetadb
