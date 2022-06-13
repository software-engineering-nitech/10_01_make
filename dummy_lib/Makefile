OBJS = lib/opencv.o lib/pcl.o

.PHONY: all clean
all: $(OBJS)
	mkdir -p /usr/local/include/opencv2/
	mkdir -p /usr/local/lib/cv2/
	install include/opencv.h /usr/local/include/opencv2/
	install include/pcl.h /usr/local/include/
	install lib/libopencv.a /usr/local/lib/cv2/
	install lib/libpcl.a /usr/local/lib/

lib/%.o: lib/%.c
	gcc $(CFLAGS) -c $< -o $@
	ar rcs lib/lib$*.a $@

clean:
	rm -f lib/*.a lib/*.o
