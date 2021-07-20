CREATE TABLE divvy (
    id INTEGER PRIMARY KEY auto_increment,
    name varchar(50) not null,
    age int not null check (age<0),
    hunger int not null check (hunger<0),
    comfort int not null check (comfort<0),
    bladder int not null check (bladder<0),
    energy int not null check (energy<0),
    fun int not null check (fun<0),
    social int not null check (social<0),
    environment int not null check (environment<0),
    hygiene int not null check (hygiene<0)
);



CREATE TABLE player (
    id INTEGER PRIMARY KEY auto_increment,
    username varchar(50) not null unique,
    password varchar(50) not null,
    divvy_id int,
    
    FOREIGN KEY (divvy_id) REFERENCES divvy(id)
);

CREATE TABLE score (
    player_id int,
    player_score int not null default 0,
    FOREIGN KEY (player_id) REFERENCES player(id)
);

CREATE TABLE timer (
    now datetime not null
);


-- insert some values
