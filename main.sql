-- Create the coach table
CREATE TABLE IF NOT EXISTS coach (
    coach_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    years_of_experience INTEGER NOT NULL
);

-- Insert records into the coach table
INSERT INTO coach VALUES (1, 'Manjula Lal', '123 Ednam road', 5);
INSERT INTO coach VALUES (2, 'Hulusi Eren', '456 Honor Ave', 8);
INSERT INTO coach VALUES (3, 'Jack Waller', '789 Rosemary Cresent', 3);

-- Create the player table
CREATE TABLE IF NOT EXISTS player (
    player_id INTEGER PRIMARY KEY,
    number INTEGER NOT NULL,
    name TEXT NOT NULL,
    shots INTEGER NOT NULL,
    hits INTEGER NOT NULL,
    steals INTEGER NOT NULL,
    rebounds INTEGER NOT NULL,
    blocks INTEGER NOT NULL
);

-- Insert records into the player table
INSERT INTO player VALUES (1, 23, 'David Beckham', 1000, 900, 200, 500, 100);
INSERT INTO player VALUES (2, 6, 'Wayne Rooney', 1200, 1000, 250, 600, 150);
INSERT INTO player VALUES (3, 24, 'Steven Gerrard', 1100, 950, 220, 550, 130);

-- Create the game table
CREATE TABLE IF NOT EXISTS game (
    game_id INTEGER PRIMARY KEY,
    home TEXT NOT NULL,
    away TEXT NOT NULL,
    date TEXT NOT NULL,
    time TEXT NOT NULL,
    location TEXT NOT NULL
);

-- Insert records into the game table
INSERT INTO game VALUES (1, 'Wolverhampton', 'Birmingham', '2024-06-19', '19:00', 'Birmingham centre');
INSERT INTO game VALUES (2, 'Liverpool', 'London', '2024-06-20', '20:00', 'United Center');
INSERT INTO game VALUES (3, 'Coventry', 'Nottingham', '2024-06-21', '18:00', 'AT&T Center');

-- Create the season table
CREATE TABLE IF NOT EXISTS season (
    season_id INTEGER PRIMARY KEY,
    begin TEXT NOT NULL,
    end TEXT NOT NULL
);

-- Insert records into the season table
INSERT INTO season VALUES (1, '2022-01-01', '2023-04-08');
INSERT INTO season VALUES (2, '2023-12-01', '2024-04-07');
INSERT INTO season VALUES (3, '2024-01-18', '2025-04-05');

-- Create the many-to-many relationship table
CREATE TABLE IF NOT EXISTS many_to_many_relationship (
    coach_id INTEGER,
    player_id INTEGER,
    PRIMARY KEY (coach_id, player_id),
    FOREIGN KEY (coach_id) REFERENCES coach(coach_id),
    FOREIGN KEY (player_id) REFERENCES player(player_id)
);
