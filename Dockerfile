FROM multiarch/qemu-user-static:x86_64-arm as qemu
FROM debian:stretch
COPY --from=qemu /usr/bin/qemu-arm-static /usr/bin
