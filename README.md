# qemu_armv7
образ docker контейнера debian для контроллера armv7.

в качестве примера была взята информация с https://www.stereolabs.com/docs/docker/building-arm-container-on-x86/

для создания необходимо на установить пакеты эмуляции процессоров qemu
# sudo apt-get install qemu binfmt-support qemu-user-static 
# docker run --rm --privileged multiarch/qemu-user-static --reset

после этого мы можем запускать контейнеры arm на x86.

готовый docker образ лежит на github andrei0686/qemu_armv7
