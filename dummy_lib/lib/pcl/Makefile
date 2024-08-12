
.PHONY: all clean

all: libpcl.a libpcl.so libopencv_or_pcl.so

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

libpcl.a: pcl.o
	ar rcs $@ $<

libpcl.so: pcl.o
	gcc -shared -o $@ $<

libopencv_or_pcl.so: opencv_or_pcl.o
	gcc -shared -o $@ $<

clean:
	rm -f *.a *.o *.so
