SELECT type_room, SUM(n_room) FROM Table Room  WHERE busy = false GROUP BY type_room;
