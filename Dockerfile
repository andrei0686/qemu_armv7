FROM multiarch/qemu-user-static:x86_64-arm as qemu
FROM arm32v7/debian:stretch
COPY --from=qemu /usr/bin/qemu-arm-static /usr/bin
