FROM gcc

RUN apt -y update \
    && apt -y install make gdb cppcheck

WORKDIR /mnt

COPY dummy_lib/ /tmp
RUN cd /tmp && make
