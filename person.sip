namespace viettel 
{
    namespace messages 
    {
        class Person  : public google::protobuf::Message
        {
            %TypeHeaderCode
            #include "person.pb.h"
            //using namespace viettel::messages;
            //using namespace google::protobuf;
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

                void CopyFrom(const google::protobuf::Message& from);
                void MergeFrom(const google::protobuf::Message& from);
                void CopyFrom(const viettel::messages::Person& from);
                void MergeFrom(const viettel::messages::Person& from);
        };
    };
};