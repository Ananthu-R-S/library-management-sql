-- Step 4: Return a Book

UPDATE IssueRecords
SET return_date = CURDATE()
WHERE issue_id = 1;

UPDATE Books
SET available = TRUE
WHERE book_id = 2;

-- Check final status
SELECT 
    b.title, 
    b.available AS Is_Available,
    i.return_date AS Returned_On
FROM Books b
LEFT JOIN IssueRecords i ON b.book_id = i.book_id;
