OBJS = main.o myfunc.o

main: $(OBJS)
	gcc $(OBJS) -o main $(LDFLAGS)

LDFLAGS := `pkg-config --libs libjpeg` $(LDFLAGS) -lm

CFLAGS := `pkg-config --cflags libjpeg` $(CFLAGS)

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

.PHONY: all clean
all: main
clean:
	rm -f main $(OBJS)
