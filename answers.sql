-- To clear the database of any existing related tables
DROP TABLE IF EXISTS EventParticipation;
DROP TABLE IF EXISTS Event;
DROP TABLE IF EXISTS ClubPresident;
DROP TABLE IF EXISTS ClubMembership;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Club;

-- Club Table
CREATE TABLE Club (
    club_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    date_established DATE
);

-- Member Table
CREATE TABLE Member (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE,
    join_date DATE DEFAULT CURRENT_DATE
);

-- ClubMembership Table (Many-to-Many between Member and Club)
CREATE TABLE ClubMembership (
    club_id INT,
    member_id INT,
    join_date DATE NOT NULL DEFAULT CURRENT_DATE,
    role VARCHAR(50) DEFAULT 'Member',
    PRIMARY KEY (club_id, member_id),
    FOREIGN KEY (club_id) REFERENCES Club(club_id) ON DELETE CASCADE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id) ON DELETE CASCADE
);

-- ClubPresident Table (One-to-One between Club and Member)
CREATE TABLE ClubPresident (
    club_id INT PRIMARY KEY,
    member_id INT UNIQUE,
    term_start DATE NOT NULL,
    term_end DATE,
    FOREIGN KEY (club_id) REFERENCES Club(club_id) ON DELETE CASCADE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id) ON DELETE CASCADE
);

-- Event Table
CREATE TABLE Event (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    club_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    event_date DATE NOT NULL,
    location VARCHAR(100),
    FOREIGN KEY (club_id) REFERENCES Club(club_id) ON DELETE CASCADE
);

-- EventParticipation Table (Many-to-Many between Member and Event)
CREATE TABLE EventParticipation (
    event_id INT,
    member_id INT,
    participation_role VARCHAR(50) DEFAULT 'Attendee',
    PRIMARY KEY (event_id, member_id),
    FOREIGN KEY (event_id) REFERENCES Event(event_id) ON DELETE CASCADE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id) ON DELETE CASCADE
);
