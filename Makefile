OBJS = main.o myfunc.o

main: $(OBJS)
	gcc $(OBJS) -o main $(LDFLAGS)

LIBS := -lm -lpcl -lopencv
LIBDIRS := -L/usr/local/lib -L/usr/local/lib/cv2
LDFLAGS := $(LIBDIRS) $(LIBS) $(CFLAGS)

INCLUDE := -I/usr/local/include/opencv2 \
           -I/usr/local/include

CFLAGS := $(INCLUDE)　$(CFLAGS)

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

.PHONY: all clean
all: main
clean:
	rm -f main $(OBJS)
