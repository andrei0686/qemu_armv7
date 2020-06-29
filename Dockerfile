FROM multiarch/qemu-user-static:x86_64-arm as qemu
FROM debian:stretch
COPY --from=qemu /usr/bin/qemu-arm-static /usr/bin
RUN echo "deb http://httpredir.debian.org/debian stretch main contrib non-free && \
deb-src http://httpredir.debian.org/debian stretch main contrib non-free && \
deb http://httpredir.debian.org/debian stretch-backports main contrib non-free && \
deb-src http://httpredir.debian.org/debian stretch-backports main contrib non-free && \
" > etc/apt/sources.list && \
echo "Package: * && \
Pin: release n=stretch-backports && \
Pin-Priority: 500 && \
" > etc/apt/preferences.d/backport 

