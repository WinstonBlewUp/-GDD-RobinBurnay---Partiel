SELECT type_room, SUM(n_room) FROM Room  WHERE busy = 0 GROUP BY type_room;
