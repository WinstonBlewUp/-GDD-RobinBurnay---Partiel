SELECT COUNT(n_room), num_room FROM Room
WHERE type_room = "handi" AND busy = 0 GROUP by num_room;