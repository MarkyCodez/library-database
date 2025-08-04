-- Create a database named library_db
CREATE DATABASE library_db;

-- Create a table of books with columns:
-- ○ book_id (SERIAL PRIMARY KEY), title (VARCHAR), author (VARCHAR),
-- year_published (INT), isAvailable (boolean), price, publication
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year_published INT,
    isAvailable BOOLEAN,
    price DECIMAL(10, 2),
    publication VARCHAR(255)
);

-- Insert 15 sample books
INSERT INTO books (title, author, year_published, isAvailable, price, publication) VALUES
('1984', 'George Orwell', 1949, TRUE, 499.99, 'Secker & Warburg'),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, FALSE, 299.50, 'Scribner'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, TRUE, 399.99, 'Little, Brown'),
('The Da Vinci Code', 'Dan Brown', 2003, TRUE, 599.00, 'Doubleday'),
('The Road', 'Cormac McCarthy', 2006, FALSE, 450.00, 'Knopf'),
('The Hunger Games', 'Suzanne Collins', 2008, TRUE, 349.75, 'Scholastic'),
('Harry Potter and the Goblet of Fire', 'J.K. Rowling', 2000, TRUE, 699.99, 'Bloomsbury'),
('To Kill a Mockingbird', 'Harper Lee', 1960, TRUE, 199.99, 'J.B. Lippincott & Co.'),
('The Fault in Our Stars', 'John Green', 2012, FALSE, 379.50, 'Dutton Books'),
('Inferno', 'Dan Brown', 2013, TRUE, 589.00, 'Doubleday'),
('Clean Code', 'Robert C. Martin', 2008, TRUE, 799.00, 'Prentice Hall'),
('The Alchemist', 'Paulo Coelho', 1988, FALSE, 299.00, 'XYZ'),
('The Midnight Library', 'Matt Haig', 2020, TRUE, 649.00, 'XYZ'),
('Sapiens', 'Yuval Noah Harari', 2011, TRUE, 899.00, 'Harper'),
('The Subtle Art of Money', 'Mark Manson', 2016, TRUE, 499.00, 'XYZ');


-- Select all books published after 2000
SELECT * FROM books
WHERE year_published > 2000;

-- Select books with a price less than 599.00, ordered by price in descending order
SELECT * FROM books
WHERE price < 599.00
ORDER BY price DESC;

-- Select the top 3 most expensive books
SELECT * FROM books
ORDER BY price DESC
LIMIT 3;

-- Select 2 books, skipping the first 2, ordered by publication_year in descending order
SELECT * FROM books
ORDER BY year_published DESC
OFFSET 2
LIMIT 2;

-- Select all books of the publication “XYZ” ordered alphabetically by title
SELECT * FROM books
WHERE publication = 'XYZ'
ORDER BY title ASC;
