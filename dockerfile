FROM gcc

RUN apt -y update \
 && apt -y install gdb cppcheck

WORKDIR /mnt
