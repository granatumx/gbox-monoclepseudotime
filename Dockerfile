FROM granatumx/gbox-r-sdk:1.0.0

RUN R -e 'BiocManager::install(c("monocle"))'

COPY . .

RUN ./GBOXtranslateVERinYAMLS.sh
RUN tar zcvf /gbox.tgz package.yaml yamls/*.yaml
