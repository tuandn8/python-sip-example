import os
import sipconfig

os.system("./gen_proto.sh")

build_file = "receiver.sbf"

config = sipconfig.Configuration()
os.system(" ".join([config.sip_bin, "-c", ".", "-b", build_file, "receiver.sip"]))

makefile = sipconfig.SIPModuleMakefile(config, build_file)
makefile.extra_libs = ["receiver", "protobuf"]
makefile.extra_cxxflags = ["-Wall -Wno-reorder -g -std=c++11"]
makefile.generate()

os.system("g++ -std=c++11 -c -Wall -Werror -fPIC person.pb.cc")
os.system("g++ -std=c++11 -c -Wall -Werror -fPIC receiver.cpp")
os.system("g++ -shared -g -Wall -o libreceiver.so receiver.o person.pb.o")
