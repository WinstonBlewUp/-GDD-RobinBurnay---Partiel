SELECT first_name, last_name, num_room, type_room, type_bed, date_in, date_out FROM Employees
JOIN Room ON Employees.id_employee = Room.id_employee
WHERE Room.busy = 'yes' AND date_in BETWEEN '2022-01-01' AND '2022-12-31';
