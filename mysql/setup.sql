CREATE DATABASE poemcollection CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE poemcollection;

CREATE TABLE poems (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    created DATETIME NOT NULL,
    expires DATETIME NOT NULL
);

CREATE INDEX idx_poems_created ON poems(created);

INSERT INTO poems (title, content, created, expires) VALUES (
    'Riding bikes',
    'Riding bikes is fun...\nfeeling the breeze,\nswoosh! Keep riding.\n\n– John Poet',
    UTC_TIMESTAMP(),
    DATE_ADD(UTC_TIMESTAMP(), INTERVAL 365 DAY)
);

INSERT INTO poems (title, content, created, expires) VALUES (
    'Running uphill',
    'As you run up and get tired, your lungs will burn\nbut the end result is worth it.\n\n– Tyrone Creative',
    UTC_TIMESTAMP(),
    DATE_ADD(UTC_TIMESTAMP(), INTERVAL 365 DAY)
);

INSERT INTO poems (title, content, created, expires) VALUES (
    'Swimming till the end',
    'Swimming the last lap\ncutting through the water\nfirst place in sight.\n\n– Tammy Eloquent',
    UTC_TIMESTAMP(),
    DATE_ADD(UTC_TIMESTAMP(), INTERVAL 7 DAY)
);

ALTER TABLE poems ADD FULLTEXT (title,content);

CREATE USER 'web'@'%';
GRANT SELECT, INSERT ON poemcollection.* TO 'web'@'%';
ALTER USER 'web'@'%' IDENTIFIED BY 'password';
