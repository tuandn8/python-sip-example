# python-sip-example
===============================================

This project is demontrated for python sip binding C++ api and google protobuf


Installation
---------------------------------
- run gen_proto.sh to generate protobuf message files.
- run python configure.py to generate C++ file from sip file, create make file, build C++ library
- copy C++ libreceiver.so to system lib directory: /usr/lib
- run make and make install to install library to python lib directory
- run python program.py to test.
