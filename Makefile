TO = $(PREFIX)/home/root/dvkgpio/

all:
	$(CC) $(CFLAGS) $(LDLAGS) -pg -o test_gpio dvc_gpio.c test_gpio.c
	$(CC) $(CFLAGS) $(LDLAGS) -pg -o lsgpio lsgpio.c
	$(CC) $(CFLAGS) $(LDLAGS) -pg -o gpio-hammer gpio-utils.c gpio-hammer.c
	$(CC) $(CFLAGS) $(LDLAGS) -pg -o gpio-event-mon gpio-event-mon.c

clean:
	rm -f test_gpio
	rm -f lsgpio
	rm -f gpio-hammer
	rm -f gpio-event-mon
	rm -f *.o

install:
	install -d $(TO)
	install test_gpio $(TO)
	install lsgpio $(TO)
	install gpio-hammer $(TO)
	install gpio-event-mon $(TO)
