//#include <string>
#include <iostream>

#include "person.pb.h"



namespace viettel 
{
    class Receiver 
    {
    public:
        Receiver();
        
        static void logReceivedMessage(viettel::messages::Person *person) 
        {
            std::cout << person->id() << " " <<  person->name() << " " << person->email() << std::endl;
        }
    };
}