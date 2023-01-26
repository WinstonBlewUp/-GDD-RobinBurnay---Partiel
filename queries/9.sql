SELECT num_room, type_room, type_bed, date_in, date_out FROM Room
JOIN Customer ON Room.id_customer = Customer.id_customer
WHERE Customer.last_name = 'Smith' AND Room.busy = true;
