CREATE TABLE todos (id SERIAL PRIMARY KEY,
                    title VARCHAR (255) NOT NULL,
                    details TEXT NULL,
                    priority INTEGER NOT NULL DEFAULT 1,
                    created_at timestamp without time zone NOT NULL,
                    completed_at timestamp without time zone NULL
                  );

INSERT INTO todos (title, priority, created_at) VALUES ('range la chambre', 2, 'now()');
INSERT INTO todos (title, created_at) VALUES ('fait les courses', 'now()');
INSERT INTO todos (title, created_at) VALUES ('lave la voiture', 'now()');
INSERT INTO todos (title, priority, created_at, completed_at) VALUES ('va a la banque', 5,'2017-06-26 20:38:40', 'now()');
INSERT INTO todos (title, created_at) VALUES ('lave la voiture', 'now()');

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = 'now()' where id=3;

DELETE FROM todos WHERE completed_at IS NOT NULL;
