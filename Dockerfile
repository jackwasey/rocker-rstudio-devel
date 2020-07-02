FROM rocker/rstudio:devel
# docker build --tag jackwasey/rocker-rstudio-devel .
# docker login docker.io
# docker push jackwasey/rocker-rstudio-devel:latest
#
# docker exec -ti <CONTAINER_ID> bash even if no tty attached originally

# LABEL org.label-schema.license="GPL-2.0" \
#       org.label-schema.vcs-url="https://github.com/rocker-org/rocker-versioned" \
#       org.label-schema.vendor="Rocker Project" \
#       maintainer="Carl Boettiger <cboettig@ropensci.org>"
# 
# ENV S6_VERSION=v1.21.7.0
# ENV RSTUDIO_VERSION=latest
# ENV PATH=/usr/lib/rstudio-server/bin:$PATH
# 
# 
# RUN /rocker_scripts/install_rstudio.sh
# RUN /rocker_scripts/install_pandoc.sh
# 
# EXPOSE 8787
# 
# CMD ["/init"]

RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y libgit2-dev libxml2-dev
ENV CFLAGS="-O3 -w --no-unroll-loops"
ENV CXXFLAGS="-O3 -w --no-unroll-loops"
ENV CXX11FLAGS="-O3 -w --no-unroll-loops"
ENV CXX14FLAGS="-O3 -w --no-unroll-loops"
ENV CXX17FLAGS="-O3 -w --no-unroll-loops"
ENV CXX20FLAGS="-O3 -w --no-unroll-loops"
