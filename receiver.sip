%Module receiver

%Include std_string.sip
%Include person.sip
%Include message.sip


namespace viettel 
{
    class Receiver 
    {
        %TypeHeaderCode
        #include "receiver.h"
        //using namespace viettel;
        //using namesapce viettel::message;
        %End

        public:
            static void logReceivedMessage(viettel::messages::Person *person);
    };
};