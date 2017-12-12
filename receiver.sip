%Module receiver

%Include std_string.sip
%Include person.sip

%ModuleHeaderCode
#include <string>
using namespace std;
%End

class Receiver 
{
    %TypeHeaderCode
    #include "receiver.h"
    using namespace viettel;
    %End

    public:
        static void logReceivedMessage(Person *person);
};