SELECT first_name, last_name, num_room from Customer JOIN Room on Customer.id_customer = Room.id_customer WHERE busy = 1;