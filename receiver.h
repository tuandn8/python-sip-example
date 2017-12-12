#include <string>
#include <iostream>

#include "person.pb.h"

using namespace std;
using namespace viettel::messages;


namespace viettel {
    class Receiver {
    public:
        Receiver();
        static void logReceivedMessage(Person *person) {
            std::cout << person->id() << " " <<  person->name() << " " << person->email() << std::endl;
        }
    };
}