PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man
LIBS = -lsfml-graphics -lsfml-window -lsfml-system

CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=2 -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
C++FLAGS   = -g -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = ${LIBS}

C++ = c++
