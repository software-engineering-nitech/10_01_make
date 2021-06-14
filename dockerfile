FROM gcc

RUN apt -y update \
    && apt -y install make gdb cppcheck

WORKDIR /mnt/10_01_make
