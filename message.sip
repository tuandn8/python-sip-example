namespace google 
{
    namespace protobuf 
    {
        class Message /Abstract/
        {
            %TypeHeaderCode
            #include <google/protobuf/message.h>
            %End

            public:
                Message();

                virtual void CopyFrom(const google::protobuf::Message& from);

                virtual void MergeFrom(const google::protobuf::Message& from);
        };
    };
};

