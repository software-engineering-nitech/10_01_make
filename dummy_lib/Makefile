
.PHONY: all clean

all: $(STATIC_LIBS) $(SHARED_LIBS)
	mkdir -p /usr/local/include/opencv2/
	mkdir -p /usr/local/lib/cv2/
	cd lib; make all

install:
	install include/opencv.h /usr/local/include/opencv2/
	install include/pcl.h /usr/local/include/
	install include/opencv_or_pcl.h /usr/local/include/
	install lib/opencv/libopencv.a /usr/local/lib/cv2/
	install lib/pcl/libpcl.a /usr/local/lib/

uninstall:
	rm -f /usr/local/include/opencv2/opencv.h
	rm -f /usr/local/include/pcl.h
	rm -f /usr/local/include/opencv_or_pcl.h
	rm -f /usr/local/lib/cv2/libopencv.a
	rm -f /usr/local/lib/libpcl.a

clean:
	cd lib; make clean
