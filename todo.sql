CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    details TEXT NULL,
    priority INTEGER NOT NULL DEFAULT '1',
    created_at TIMESTAMP NOT NULL,
    completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, created_at, completed_at) 
    VALUES ('Fix Y2K', 'or the world will blow up', '1999-01-01 00:00:00', '1999-12-31 23:59:59');

INSERT INTO todos (title, details, priority, created_at)
    VALUES ('Get to the chopper', 'it is the only way out', '3', '2017-06-20 12:00:00');

INSERT INTO todos (title, priority, created_at) 
    VALUES ('Have dinner with the president', '100', '1986-12-07 00:00:00');

INSERT INTO todos (title, details, priority, created_at)
    VALUES ('Make a to-do list', 'so you can become more organized', '18', '2017-06-27 17:00:01');

INSERT INTO todos (title, details, created_at)
    VALUES ('Work on this next task', 'it has to get done', '2005-07-21 04:17:42');

-- all incomplete tasks
SELECT * FROM todos WHERE completed_at IS NULL;

-- all tasks with priority above 1
SELECT * FROM todos WHERE priority > 1;

-- complete a task by id
UPDATE todos SET completed_at = '2017-06-27 17:00:02' WHERE id = 4;

-- delete all completed tasks
DELETE FROM todos WHERE completed_at IS NOT NULL;