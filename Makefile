TARGET = receiver.so
OFILES = sipreceivercmodule.o sipreceiverviettelReceiver.o sipreceivergoogleprotobuf.o sipreceivergoogle.o sipreceiverviettelmessagesPerson.o sipreceivergoogleprotobufMessage.o sipreceiverviettelmessages.o sipreceiverviettel.o sipreceiverstdstring.o
HFILES = sipAPIreceiver.h 

CC = gcc
CXX = g++
LINK = g++
CPPFLAGS = -DNDEBUG -I. -I/usr/include/python2.7
CFLAGS =  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security  -Wdate-time -D_FORTIFY_SOURCE=2 -fPIC -Wall -W
CXXFLAGS = -Wall -Wno-reorder -g -std=c++11  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security  -Wdate-time -D_FORTIFY_SOURCE=2 -fPIC -Wall -W
LFLAGS =  -Wl,-Bsymbolic-functions -Wl,-z,relro -shared -Wl,--version-script=receiver.exp
LIBS = -lreceiver -lprotobuf
.SUFFIXES: .c .o .cpp .cc .cxx .C


.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.C.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.c.o:
	$(CC) -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

all: $(TARGET)

$(OFILES): $(HFILES)

$(TARGET): $(OFILES)
	@echo '{ global: initreceiver; local: *; };' > receiver.exp
	$(LINK) $(LFLAGS) -o $(TARGET) $(OFILES) $(LIBS)

install: $(TARGET)
	@test -d $(DESTDIR)/usr/lib/python2.7/dist-packages || mkdir -p $(DESTDIR)/usr/lib/python2.7/dist-packages
	cp -f $(TARGET) $(DESTDIR)/usr/lib/python2.7/dist-packages/$(TARGET)

clean:
	-rm -f $(TARGET)
	-rm -f sipreceivercmodule.o
	-rm -f sipreceiverviettelReceiver.o
	-rm -f sipreceivergoogleprotobuf.o
	-rm -f sipreceivergoogle.o
	-rm -f sipreceiverviettelmessagesPerson.o
	-rm -f sipreceivergoogleprotobufMessage.o
	-rm -f sipreceiverviettelmessages.o
	-rm -f sipreceiverviettel.o
	-rm -f sipreceiverstdstring.o
	-rm -f receiver.exp
