DROP DATABASE IF EXISTS LibraryDB;
CREATE DATABASE LibraryDB;
USE LibraryDB;
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    published_year INT
);
INSERT INTO Books (book_id, title, author, published_year)
VALUES
(1, 'phyton', 'Talha', 1960),
(2, 'english', 'Arslan', 1949),
(3, 'urdu', 'Ali', 1925),
(4, 'physic', 'Mubeen', 1851),
(5, 'Ai', 'Fakhar', 1813);
SELECT * FROM Books;
