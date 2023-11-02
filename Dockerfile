FROM uwgac/anvildatamodels:0.2.7

RUN Rscript -e 'BiocManager::install(c("R.utils"))'

RUN cd /usr/local && \
    git clone https://github.com/UW-GAC/wdl_test.git
