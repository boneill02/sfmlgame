include config.mk

SRC = main.cpp
OBJ = ${SRC:.cpp=.o}
TARG = sfmltest

all: sfmltest

.c.o:
	${C++} -c ${CFLAGS} $<

${OBJ}: config.mk

${TARG}: ${OBJ}
	${C++} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f ${TARG} ${OBJ}

dist:
	tar -czf ${TARG}.tar.gz ${SRC} config.mk Makefile README.md LICENSE

install: all
	cp ${TARG} $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(PREFIX)/share/${TARG}
	cp scripts/* $(DESTDIR)$(PREFIX)/share/${TARG}/

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/${TARG} $(DESTDIR)$(PREFIX)/share/${TARG}

.PHONY: all options clean dist install uninstall
