SELECT type_room, SUM(n_room) FROM Table Room  WHERE busy = 'no' GROUP BY type_room;
