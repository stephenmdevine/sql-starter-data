-- Return A Midsummer's Night Dream (id 1) from Dorian Betje (id 8)

UPDATE book
SET available = true
WHERE book_id = 1;

UPDATE loan
SET date_in = CURRENT_DATE()
WHERE loan_id = 1;

UPDATE patron
SET loan_id = null
WHERE patron_id = 8;