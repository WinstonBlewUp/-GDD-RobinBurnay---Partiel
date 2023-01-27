SELECT first_name, last_name FROM Employees
JOIN Room ON Employees.id_employee = Room.id_employee
WHERE Room.busy = true AND date_in BETWEEN '2022-01-01' AND '2022-12-31';
