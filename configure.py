import os
import sipconfig

os.system("./gen_proto.sh")

build_file = "receiver.sbf"

config = sipconfig.Configuration()
os.system(" ".join([config.sip_bin, "-c", ".", "-b", build_file, "receiver.sip"]))

makefile = sipconfig.SIPModuleMakefile(config, build_file)
makefile.extra_libs = ["receiver"]
makefile.generate()

os.system("g++ -c -Wall -Werror -fPIC receiver.cpp")
os.system("g++ -shared -o libreceiver.so receiver.o")