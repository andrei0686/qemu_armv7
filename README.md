# qemu_armv7
образ docker контейнера debian для контроллера armv7.

в качестве примера была взята информация с https://www.stereolabs.com/docs/docker/building-arm-container-on-x86/

для создания необходимо установить пакеты эмуляции процессоров qemu
```sh
sudo apt-get install qemu binfmt-support qemu-user-static 
docker run --rm --privileged multiarch/qemu-user-static --reset
```

после этого мы можем запускать контейнеры arm на x86.

# можно собрать образ из dockerfile
```sh
git clone https://github.com/andrei0686/qemu_armv7
cd qemu_armv7/
docker build --rm -t qemu_armv7 . 
```

# или получить готовый образ из репозитория github
```sh
docker pull andrei0686/qemu_armv7
```

# затем запустим контейнер из образа и проверим архитектуру
```sh
docker run --rm -t qemu_armv7 uname -m
```
в ответ получим
```sh
armv7l
```
