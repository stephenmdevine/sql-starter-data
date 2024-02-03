-- Loan A Midsummer's Night Dream (id 1) to Dorian Betje (id 8)

UPDATE book
SET available = false
WHERE book_id = 1;

INSERT INTO loan (patron_id, date_out, book_id)
VALUES (8, CURRENT_DATE(), 1);

UPDATE patron
SET loan_id = 1
WHERE patron_id = 8;

-- Loan Pride and Prejudice (id 12) to Jodi Leopard (id 35)

UPDATE book
SET available = false
WHERE book_id = 12;

INSERT INTO loan (patron_id, date_out, book_id)
VALUES (35, CURRENT_DATE(), 12);

UPDATE patron
SET loan_id = 2
WHERE patron_id = 35;

-- Loan The  Subtle Knife(id 4) to Jonas Sinclair (id 43)

UPDATE book
SET available = false
WHERE book_id = 4;

INSERT INTO loan (patron_id, date_out, book_id)
VALUES (43, CURRENT_DATE(), 4);

UPDATE patron
SET loan_id = 3
WHERE patron_id = 43;

-- Loan A Fatal Grace (id 23) to Jennifer Slayny (id 1)

UPDATE book
SET available = false
WHERE book_id = 23;

INSERT INTO loan (patron_id, date_out, book_id)
VALUES (1, CURRENT_DATE(), 23);

UPDATE patron
SET loan_id = 4
WHERE patron_id = 1;