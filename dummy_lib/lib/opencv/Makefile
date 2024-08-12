
.PHONY: all clean

all: libopencv.a libopencv.so libopencv_or_pcl.so

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

libopencv.a: opencv.o
	ar rcs $@ $<

libopencv.so: opencv.o
	gcc -shared -o $@ $<

libopencv_or_pcl.so: opencv_or_pcl.o
	gcc -shared -o $@ $<

clean:
	rm -f *.a *.o *.so
