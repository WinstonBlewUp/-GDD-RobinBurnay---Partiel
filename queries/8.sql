SELECT name, type_room, type_bed, n_room, busy FROM Table Hotel
JOIN Table Room ON Table Hotel.num_room = Table Room.num_room
WHERE Table Room.busy = false;