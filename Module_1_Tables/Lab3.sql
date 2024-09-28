set echo on
spool "E:\DP\Lab\Lab3_output.txt"

--Li Xue Qing
--HDSE 1A 240153742
--Database Principles Lab3
--Task 2
-- table 1
CREATE TABLE Publisher
(
    publisher_ID   VARCHAR(2)   NOT NULL,
    publisher_Name VARCHAR(50)  NOT NULL,
    address        VARCHAR(250) NULL,
    CONSTRAINT publisher_pk PRIMARY KEY (publisher_ID)
);

-- table 2
CREATE TABLE Category
(
    cat_ID   VARCHAR(2)  NOT NULL,
    category VARCHAR(50) NOT NULL,
    CONSTRAINT category_pk PRIMARY KEY (cat_ID)
);
-- table 3
CREATE TABLE Book
(
    book_ID        NUMBER(2)     NOT NULL,
    title          VARCHAR(50)   NOT NULL,
    cat_ID         VARCHAR(2)    NULL,
    copyright_Year NUMBER(2)     NULL,
    isbn_Number    VARCHAR(50)   NULL,
    publisher_ID   VARCHAR(2)    NULL,
    purchase_Price DECIMAL(4, 2) NULL,
    cover_Type     VARCHAR(10)   NULL,
    datePurchased DATE  DEFAULT CURRENT_DATE,
    pages          NUMBER(4)     NULL,
    CONSTRAINT book_PK PRIMARY KEY (book_ID),
    CONSTRAINT book_publisher_ID_fk FOREIGN KEY (publisher_ID) REFERENCES Publisher (publisher_ID)
);
-- table 4
CREATE TABLE Author
(
    author_ID     VARCHAR(2)  NOT NULL,
    first_Name    VARCHAR(50) NOT NULL,
    last_Name     VARCHAR(50) NOT NULL,
    qualification VARCHAR(10) NULL,
    gender        CHAR(1)      NULL CHECK (gender IN ('M', 'F', 'm', 'f')),
    CONSTRAINT author_PK PRIMARY KEY (author_ID)
);
-- table 5
CREATE TABLE BookAuthor
(
    book_ID   NUMBER(2)  NOT NULL,
    author_ID VARCHAR(2) NOT NULL,
    PRIMARY KEY (book_ID, author_ID),
    CONSTRAINT bookauthor_book_ID_fk FOREIGN KEY (book_ID) REFERENCES Book (book_ID),
    CONSTRAINT bookauthor_author_ID_fk FOREIGN KEY (author_ID) REFERENCES Author (author_ID)
);


--Task 2

