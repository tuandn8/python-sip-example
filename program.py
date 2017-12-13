import receiver

person = receiver.viettel.messages.Person()

person.set_name("Me")
person.set_id(1)
person.set_email("coder@gmail.com")

receive = receiver.viettel.Receiver()

receive.logReceivedMessage(person)