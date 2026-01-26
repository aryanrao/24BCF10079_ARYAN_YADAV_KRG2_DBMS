SELECT * FROM BOOKS;
SELECT * FROM LIBRARY_VISITOR_USER;
SELECT * FROM BOOK_ISSUE;



-- insert delete update on books from library user

INSERT INTO BOOKS values(2,'Sherlock Homes','Arthur Conan Doyle');
SELECT * from BOOKS;
UPDATE BOOKS
SET COUNT = 5
WHERE ID = 2;

SELECT * FROM books;