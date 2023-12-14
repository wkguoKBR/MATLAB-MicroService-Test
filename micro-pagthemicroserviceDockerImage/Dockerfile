# Dockerfile for image: micro-pagthe
# 
# Sample docker build command:
# docker build --progress=plain --platform=linux/amd64 -f "Dockerfile" -t micro-pagthe "."



FROM matlabruntime/r2023b/release/update3/108000000000000000

COPY ./applicationFilesForMATLABCompiler /usr/bin/mlrtapp
RUN chmod -R a+rX /usr/bin/mlrtapp/*

RUN if ["$(getent passwd appuser | cut -d: -f1)" = ""] ; then useradd -ms /bin/bash appuser ; fi
USER 10001

ENTRYPOINT ["/opt/matlabruntime/R2023b/bin/glnxa64/muserve", "-a", "/usr/bin/mlrtapp/MYPAGTHE.ctf"]
