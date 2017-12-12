class Person 
{
    %TypeHeaderCode
    #include "person.pb.h"
    using namespace viettel::messages;
    %End

    public:
        Person();

        bool has_name() const;
        void clear_name();
        const std::string& name();
        void set_name(const std::string& value);

        bool has_id() const;
        void clear_id();
        int id() const;
        void set_id(int value);

        bool has_email() const;
        void clear_email();
        const std::string& email();
        void set_email(const std::string& value);
};