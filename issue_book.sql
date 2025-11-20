-- Issue a Book

INSERT INTO IssueRecords (member_id, book_id, issue_date)
VALUES (1, 2, CURDATE());

UPDATE Books
SET available = FALSE
WHERE book_id = 2;

-- View issued books
SELECT 
    m.name AS Member, 
    b.title AS Book, 
    i.issue_date AS Issued_On
FROM IssueRecords i
JOIN Members m ON i.member_id = m.member_id
JOIN Books b ON i.book_id = b.book_id;
