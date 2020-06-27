FROM multiarch/qemu-user-static:x86_64-aarch64 as qemu
FROM arm64v8/ubuntu
COPY --from=qemu /usr/bin/qemu-aarch64-static /usr/bin
