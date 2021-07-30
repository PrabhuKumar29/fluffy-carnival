DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       name TEXT UNIQUE NOT NULL
       );


CREATE TABLE tag (
       id SERIAL PRIMARY KEY ,
       name TEXT UNIQUE NOT NULL,
       mail TEXT UNIQUE NOT NULL,
       pass TEXT UNIQUE NOT NULL,
       );    
       

CREATE TABLE tasks (
    id SERIAL primary key,
    user_id varchar(100) references users(id),
    task_name TEXT UNIQUE NOT null,
    task_description TEXT UNIQUE NOT null,
    due_date DATE NOT null,
    due_time DATE NOT null,
    date_time text,
    status text,
    _user integer,
    foreign key(_user) references users(id) on delete cascade
);
