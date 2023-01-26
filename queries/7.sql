SELECT first_name, last_name, job_title FROM Employees
JOIN Room ON Employees.id_employee = Room.id_employee
WHERE Room.busy = true;
