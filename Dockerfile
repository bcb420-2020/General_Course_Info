FROM bioconductor/release_core2:R3.6.0_Bioc3.9 

# Install required packages
RUN install2.r \
    -d TRUE -e \
    -r "https://cran.rstudio.com" \
    -r "http://www.bioconductor.org/packages/release/bioc" \
    TCGAbiolinks \
    RTCGAToolbox 

#install additional packages
RUN install2.r \
   -d TRUE \
   -r "https://cran.rstudio.com" \
   -r "http://www.bioconductor.org/packages/release/bioc" \
   RColorBrewer@1.1-2 \
   GEOquery@2.52.0 \
   BiocGenerics@0.30.0

