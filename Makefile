.PHONY: all clean

all: main

OBJS = main.o myfunc.o

main: $(OBJS)
	gcc $(OBJS) -o main $(LDFLAGS) \
	-L./dummy_lib/lib/opencv/ \
	-lopencv_or_pcl

LIBS := -lm -lpcl -lopencv
LIBDIRS := -L/usr/local/lib -L/usr/local/lib/cv2
LDFLAGS := $(LIBDIRS) $(LIBS) $(LDFLAGS)

INCLUDE := -I/usr/local/include/opencv2 \
           -I/usr/local/include

CFLAGS := $(INCLUDE) $(CFLAGS)

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

clean:
	rm -f main $(OBJS)
