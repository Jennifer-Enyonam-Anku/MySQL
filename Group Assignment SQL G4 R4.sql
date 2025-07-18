-- Create and initialize the Entertainment database
CREATE DATABASE Entertainment;
USE Entertainment;

-- Create People table with all columns (including gender)
CREATE TABLE People (
    person_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    gender ENUM('Male', 'Female', 'Non-binary', 'Other'),
    birth_year INT,
    nationality VARCHAR(50),
    is_actor BOOLEAN,
    is_musician BOOLEAN,
    is_comedian BOOLEAN,
    is_model BOOLEAN,
    is_broadcaster BOOLEAN
);

INSERT INTO People (full_name, gender, birth_year, nationality, is_actor, is_musician, is_comedian, is_model, is_broadcaster) VALUES
-- Actors
('Hugh Jackman', 'Male', 1968, 'Australian', TRUE, TRUE, TRUE, FALSE, FALSE),
('Nicole Kidman', 'Female', 1967, 'Australian', TRUE, FALSE, FALSE, TRUE, FALSE),
('Margot Robbie', 'Female', 1990, 'Australian', TRUE, FALSE, FALSE, FALSE, FALSE),
('Chris Hemsworth', 'Male', 1983, 'Australian', TRUE, FALSE, FALSE, FALSE, FALSE),
('Toni Collette', 'Female', 1972, 'Australian', TRUE, TRUE, FALSE, FALSE, FALSE),
('Joel Edgerton', 'Male', 1974, 'Australian', TRUE, FALSE, FALSE, FALSE, FALSE),
('Samara Weaving', 'Female', 1992, 'Australian', TRUE, FALSE, FALSE, TRUE, FALSE),
('Simon Baker', 'Male', 1969, 'Australian', TRUE, FALSE, FALSE, FALSE, FALSE),
('Isla Fisher', 'Female', 1976, 'Australian', TRUE, FALSE, TRUE, FALSE, FALSE),
('Guy Pearce', 'Male', 1967, 'Australian', TRUE, TRUE, FALSE, FALSE, FALSE),

-- Musician
('Sia Furler', 'Female', 1975, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Guy Sebastian', 'Male', 1981, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Keith Urban', 'Male', 1967, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Delta Goodrem', 'Female', 1984, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Jessica Mauboy', 'Female', 1989, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Iggy Azalea', 'Female', 1990, 'Australian', FALSE, TRUE, FALSE, TRUE, FALSE),
('Troye Sivan', 'Male', 1995, 'Australian', TRUE, TRUE, FALSE, FALSE, FALSE),
('Kylie Minogue', 'Female', 1968, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Vance Joy', 'Male', 1987, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Tame Impala (Kevin Parker)', 'Male', 1986, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Briggs (Adam Briggs)', 'Male', 1986, 'Australian', TRUE, TRUE, TRUE, FALSE, TRUE),
('Missy Higgins', 'Female', 1983, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Daniel Johns', 'Male', 1979, 'Australian', FALSE, TRUE, FALSE, FALSE, FALSE),
('Courtney Barnett', 'Female', 1987, 'Australian',FALSE, TRUE, FALSE, FALSE, FALSE),

-- Comedy
('Rebel Wilson', 'Female', 1980, 'Australian', TRUE, FALSE, TRUE, FALSE, FALSE),
('Paul Hogan', 'Male', 1939, 'Australian', TRUE, FALSE, TRUE, FALSE, FALSE),
('Hamish Blake', 'Male', 1981, 'Australian', FALSE, FALSE, TRUE, FALSE, TRUE),
('Andy Lee', 'Male', 1981, 'Australian', FALSE, FALSE, TRUE, FALSE, TRUE),
('Celeste Barber', 'Female', 1982, 'Australian', TRUE, FALSE, TRUE, FALSE, TRUE),
('Joel Creasey', 'Male', 1990, 'Australian', FALSE, FALSE, TRUE, FALSE, TRUE),
('Wil Anderson', 'Male', 1974, 'Australian', FALSE, FALSE, TRUE, FALSE, TRUE),
('Tom Gleeson', 'Male', 1974, 'Australian', FALSE, FALSE, TRUE, FALSE, TRUE),
('Dave Hughes', 'Male', 1970, 'Australian', FALSE, FALSE, TRUE, FALSE, TRUE),
('Shaun Micallef', 'Male', 1962, 'Australian', TRUE, FALSE, TRUE, FALSE, TRUE),

-- Fashion
('Samantha Harris', 'Female', 1990, 'Australian', FALSE, FALSE, FALSE, TRUE, FALSE),
('Adut Akech', 'Female', 1999, 'Australian', FALSE, FALSE, FALSE, TRUE, FALSE),
('Gemma Ward', 'Female', 1987, 'Australian', TRUE, FALSE, FALSE, TRUE, FALSE),
('Elle Macpherson', 'Female', 1964, 'Australian', TRUE, FALSE, FALSE, TRUE, TRUE),
('Miranda Kerr', 'Female', 1983, 'Australian', FALSE, FALSE, FALSE, TRUE, FALSE),
('Abbey Lee', 'Female', 1987, 'Australian', TRUE, FALSE, FALSE, TRUE, FALSE),
('Jordan Barrett', 'Male', 1996, 'Australian', FALSE, FALSE, FALSE, TRUE, FALSE),

-- Broadcasting
('Osher Günsberg', 'Male', 1974, 'Australian', FALSE, FALSE, FALSE, FALSE, TRUE),
('Carrie Bickmore', 'Female', 1980, 'Australian', FALSE, FALSE, TRUE, FALSE, TRUE),
('Waleed Aly', 'Male', 1978, 'Australian', FALSE, FALSE, FALSE, FALSE, TRUE),
('Lisa Wilkinson', 'Female', 1959, 'Australian', FALSE, FALSE, FALSE, FALSE, TRUE),
('Peter Overton', 'Male', 1966, 'Australian', FALSE, FALSE, FALSE, FALSE, TRUE),
('Leigh Sales', 'Female', 1973, 'Australian', FALSE, FALSE, FALSE, FALSE, TRUE),
('Sophie Monk', 'Female', 1979, 'Australian', TRUE, TRUE, FALSE, TRUE, TRUE),
('Erin Molan', 'Female', 1984, 'Australian', FALSE, FALSE, FALSE, FALSE, TRUE),
('Jessica Rowe', 'Female', 1970, 'Australian', FALSE, FALSE, FALSE, FALSE, TRUE);

-- Create Movies table DONE
CREATE TABLE Movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    release_year INT,
    revenue_million_aud FLOAT,
    region_released VARCHAR(50),
    genre VARCHAR(50)
);

-- Insert movies that connect to Work/Contributions
INSERT INTO Movies (title, release_year, revenue_million_aud, region_released, genre) VALUES
-- Hugh Jackman (person_id: 1)
('The Greatest Showman', 2017, 434.0, 'Global', 'Musical'),
('Logan', 2017, 619.0, 'Global', 'Action/Drama'),
('X-Men: Days of Future Past', 2014, 750.0, 'Global', 'Action/Sci-Fi'),
-- Nicole Kidman (person_id: 2)
('Moulin Rouge!', 2001, 179.2, 'Global', 'Musical/Romance'),
('Big Little Lies', 2017, NULL, 'Global', 'Drama'), -- TV series actually
('The Others', 2001, 209.0, 'Global', 'Horror/Thriller'),
-- Margot Robbie (person_id: 3)
('Barbie', 2023, 1440.0, 'Global', 'Comedy'), -- Worldwide gross ~$1.44B
('The Wolf of Wall Street', 2013, 392.0, 'Global', 'Biography/Comedy'),
('I, Tonya', 2017, 53.0, 'Global', 'Biography/Drama'),
-- Chris Hemsworth (person_id: 4)
('Thor: Ragnarok', 2017, 853.9, 'Global', 'Action/Sci-Fi'), -- Not Australia-specific
('Extraction', 2020, NULL, 'Global', 'Action/Thriller'), -- Netflix film
('Rush', 2013, 90.0, 'Global', 'Biography/Drama'),
-- Toni Collette (person_id: 5)
('Hereditary', 2018, 80.2, 'Global', 'Horror'), -- US production
('The Sixth Sense', 1999, 672.8, 'Global', 'Drama/Horror'),
('Muriel''s Wedding', 1994, 57.0, 'Australia', 'Comedy/Drama'), -- Fixed apostrophe
-- Joel Edgerton (person_id: 6)
('The Gift', 2015, 59.0, 'Global', 'Thriller'), -- Had worldwide release
('Bright', 2017, NULL, 'Global', 'Action/Fantasy'), -- Netflix film
('Warrior', 2011, 23.0, 'Global', 'Drama/Sport'),
-- Samara Weaving (person_id: 7)
('Ready or Not', 2019, 57.0, 'Global', 'Horror/Comedy'), -- Not Australia-specific
('The Babysitter', 2017, NULL, 'Global', 'Comedy/Horror'), -- Netflix film
('Bill & Ted Face the Music', 2020, NULL, 'Global', 'Comedy/Sci-Fi'),
-- Simon Baker (person_id: 8)
('The Mentalist', 2008, NULL, 'Global', 'Crime/Drama'), -- TV series
('The Devil Wears Prada', 2006, 326.7, 'Global', 'Comedy/Drama'),
('Land of the Dead', 2005, 46.0, 'Global', 'Horror'),
-- Isla Fisher (person_id: 9)
('Wedding Crashers', 2005, 288.0, 'Global', 'Comedy'), -- US production
('Confessions of a Shopaholic', 2009, 108.3, 'Global', 'Comedy/Romance'),
('Now You See Me', 2013, 351.0, 'Global', 'Crime/Thriller'),
-- Guy Pearce (person_id: 10)
('Memento', 2000, 40.0, 'Global', 'Thriller'), -- US production
('L.A. Confidential', 1997, 126.2, 'Global', 'Crime/Drama'),
('The King''s Speech', 2010, 424.0, 'Global', 'Biography/Drama'), -- Fixed apostrophe
-- Troye Sivan (person_id: 17)
('Spud', 2010, 3.5, 'South Africa', 'Comedy/Drama'),
('Boy Erased', 2018, 11.0, 'Global', 'Biography/Drama'),
-- Briggs (Adam Briggs) (person_id: 21)
('The Sapphires', 2012, 20.0, 'Australia', 'Comedy/Drama'),
-- Rebel Wilson (person_id: 25)
('Pitch Perfect', 2012, 115.0, 'Global', 'Musical/Comedy'), -- US production
('Isn''t It Romantic', 2019, 48.0, 'Global', 'Romantic Comedy'), -- Fixed apostrophe
-- Paul Hogan (person_id: 26)
('Crocodile Dundee', 1986, 328.0, 'Global', 'Comedy'), -- Had worldwide release
('Lightning Jack', 1994, 25.0, 'Australia', 'Comedy/Western'),
-- Celeste Barber (person_id: 29)
('Senior Year', 2022, NULL, 'Global', 'Comedy'), -- Netflix film
-- Shaun Micallef (person_id: 34)
('Bad Eggs', 2003, 2.6, 'Australia', 'Comedy/Crime'),
-- Gemma Ward (person_id: 37)
('The Strangers', 2008, 82.4, 'Global', 'Horror/Thriller'),
('Pirates of the Caribbean: On Stranger Tides', 2011, 1045.0, 'Global', 'Adventure'),
-- Elle Macpherson (person_id: 38)
('The Edge', 1997, 43.2, 'Global', 'Adventure/Drama'),
('Batman & Robin', 1997, 238.0, 'Global', 'Action'),
-- Abbey Lee (person_id: 40)
('Mad Max: Fury Road', 2015, 378.9, 'Global', 'Action'), -- International co-production
('The Neon Demon', 2016, 3.3, 'Global', 'Horror'),
-- Sophie Monk (person_id: 48)
('Date Night', 2010, 152.3, 'Global', 'Comedy/Romance');

-- Music table DONE
CREATE TABLE Music (
    music_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT,
    title VARCHAR(100),
    type ENUM('song', 'album'),
    genre VARCHAR(50),
    is_hit BOOLEAN,
    release_year INT,
    revenue_million_aud FLOAT,
    label VARCHAR(100),
    FOREIGN KEY (person_id) REFERENCES People(person_id)
);

INSERT INTO Music (person_id, title, type, genre, is_hit, release_year, revenue_million_aud, label) VALUES
-- Hugh Jackman (person_id: 1)
(1, 'The Greatest Showman Soundtrack', 'album', 'Musical', TRUE, 2017, 150.0, 'Atlantic Records'),
(1, 'A Million Dreams', 'song', 'Musical', TRUE, 2017, 85.0, 'Atlantic Records'),
-- Toni Collette (person_id: 5)
(5, 'Beautiful Awkward Pictures', 'album', 'Alternative', FALSE, 2006, 0.5, 'Little Nobody Records'),
(5, 'Mr. Chicken', 'song', 'Alternative', FALSE, 2006, 0.1, 'Little Nobody Records'),
-- Guy Pearce (person_id: 10)
(10, 'Broken Bones', 'album', 'Rock', FALSE, 2014, 0.3, 'Independent'),
(10, 'Storm', 'song', 'Rock', FALSE, 2014, 0.1, 'Independent'),
-- Sia Furler (person_id: 11)
(11, '1000 Forms of Fear', 'album', 'Pop', TRUE, 2014, 150.0, 'Monkey Puzzle/RCA'),
(11, 'This Is Acting', 'album', 'Pop', TRUE, 2016, 200.0, 'Monkey Puzzle/RCA'),
(11, 'Chandelier', 'song', 'Pop', TRUE, 2014, 250.0, 'Monkey Puzzle/RCA'),
(11, 'Cheap Thrills', 'song', 'Pop', TRUE, 2016, 180.0, 'Monkey Puzzle/RCA'),
-- Guy Sebastian (person_id: 12)
(12, 'Armageddon', 'album', 'Pop', TRUE, 2012, 110.0, 'Sony Music Australia'),
(12, 'Beautiful Life', 'album', 'Pop', TRUE, 2014, 50.0, 'Sony Music Australia'),
(12, 'Angels Brought Me Here', 'song', 'Pop', TRUE, 2003, 150.0, 'Sony Music Australia'),
(12, 'Battle Scars (with Lupe Fiasco)', 'song', 'Pop/R&B', TRUE, 2012, 70.0, 'Sony Music Australia'),
-- Keith Urban (person_id: 13)
(13, 'Ripcord', 'album', 'Country', TRUE, 2016, 120.0, 'Capitol Records Nashville'),
(13, 'The Speed of Now Part 1', 'album', 'Country', FALSE, 2020, 200.0, 'Capitol Records Nashville'),
(13, 'Blue Ain\'t Your Color', 'song', 'Country', TRUE, 2016, 90.0, 'Capitol Records Nashville'),
-- Delta Goodrem (person_id: 14)
(14, 'Innocent Eyes', 'album', 'Pop', TRUE, 2003, 140.0, 'Sony Music Australia'),
(14, 'Delta', 'album', 'Pop', FALSE, 2007, 80.0, 'Sony BMG'),
(14, 'Born to Try', 'song', 'Pop', TRUE, 2002, 95.0, 'Sony Music Australia'),
-- Jessica Mauboy (person_id: 15)
(15, 'Beautiful', 'album', 'Pop/R&B', TRUE, 2013, 40.0, 'Sony Music Australia'),
(15, 'Hilda', 'album', 'Pop', FALSE, 2019, 90.0, 'Sony Music Australia'),
(15, 'Running Back (feat. Flo Rida)', 'song', 'Pop/R&B', TRUE, 2008, 50.0, 'Sony Music Australia'),
-- Iggy Azalea (person_id: 16)
(16, 'The New Classic', 'album', 'Hip-Hop', TRUE, 2014, 150.0, 'Def Jam Recordings'),
(16, 'In My Defense', 'album', 'Hip-Hop', FALSE, 2019, 85.0, 'Bad Dreams Records'),
(16, 'Fancy (feat. Charli XCX)', 'song', 'Hip-Hop', TRUE, 2014, 200.0, 'Def Jam Recordings'),
-- Troye Sivan (person_id: 17)
(17, 'Blue Neighbourhood', 'album', 'Pop', TRUE, 2015, 80.0, 'EMI Australia'),
(17, 'Youth', 'song', 'Pop', TRUE, 2015, 70.0, 'EMI Australia'),
-- Kylie Minogue (person_id: 18)
(18, 'Fever', 'album', 'Dance-Pop', TRUE, 2001, 220.0, 'Parlophone/Mushroom'),
(18, 'Can\'t Get You Out of My Head', 'song', 'Dance-Pop', TRUE, 2001, 180.0, 'Parlophone/Mushroom'),
-- Vance Joy (person_id: 19)
(19, 'Dream Your Life Away', 'album', 'Indie Folk', TRUE, 2014, 70.0, 'Liberation Music'),
(19, 'Nation of Two', 'album', 'Indie Folk', FALSE, 2018, 95.0, 'Atlantic'),
(19, 'Riptide', 'song', 'Indie Folk', TRUE, 2013, 120.0, 'Liberation Music'),
-- Tame Impala (Kevin Parker) (person_id: 20)
(20, 'Currents', 'album', 'Psychedelic Rock', TRUE, 2015, 100.0, 'Modular/Interscope'),
(20, 'The Less I Know the Better', 'song', 'Psychedelic Rock', TRUE, 2015, 80.0, 'Modular/Interscope'),
-- Briggs (Adam Briggs) (person_id: 21)
(21, 'Sheplife', 'album', 'Hip-Hop', TRUE, 2014, 30.0, 'Bad Apples Music/Island Records'),
(21, 'Reclaim Australia', 'album', 'Hip-Hop', FALSE, 2016, 70.0, 'Bad Apples Music/Island Records'),
(21, 'The Children Came Back', 'song', 'Hip-Hop', TRUE, 2015, 20.0, 'Bad Apples Music/Island Records'),
-- Missy Higgins (person_id: 22)
(22, 'The Sound of White', 'album', 'Pop Rock', TRUE, 2004, 90.0, 'Eleven/Virgin'),
(22, 'Scar', 'song', 'Pop Rock', TRUE, 2004, 70.0, 'Eleven/Virgin'),
-- Daniel Johns (person_id: 23)
(23, 'Talk', 'album', 'Alternative Rock', TRUE, 2015, 30.0, 'Eleven Music'),
(23, 'Diorama', 'album', 'Alt Rock', FALSE, 2002, 50.0, 'Eleven Music'),
(23, 'Aerial Love', 'song', 'Alternative Rock', TRUE, 2015, 20.0, 'Eleven Music'),
-- Courtney Barnett (person_id: 24)
(24, 'Sometimes I Sit and Think, and Sometimes I Just Sit', 'album', 'Indie Rock', TRUE, 2015, 50.0, 'Milk! Records/Marathon Artists'),
(24, 'Pedestrian at Best', 'song', 'Indie Rock', TRUE, 2015, 30.0, 'Milk! Records/Marathon Artists'),
-- Sophie Monk (person_id: 48)
(48, 'Calendar Girl', 'album', 'Pop', TRUE, 2003, 25.0, 'Universal Music Australia'),
(48, 'Inside Outside', 'song', 'Pop', TRUE, 2003, 10.0, 'Universal Music Australia');

-- Comedy Table DONE
CREATE TABLE Comedy (
    comedy_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT,
    show_title VARCHAR(100),
    year_performed INT,
    audience_count INT,
    FOREIGN KEY (person_id) REFERENCES People(person_id)
);

INSERT INTO Comedy (person_id, show_title, year_performed, audience_count) VALUES
-- Hugh Jackman (person_id: 1)
(1, 'Tony Awards Host', 2004, 6000000),
-- Isla Fisher (person_id: 9)
(9, 'Wedding Crashers Improv', 2005, NULL),
-- Briggs (Adam Briggs) (person_id: 21)
(21, 'Briggsy Bear Comedy Tour', 2018, 150000),
-- Rebel Wilson (person_id: 25)
(25, 'LOL: Last One Laughing Australia', 2020, 1200000),
-- Paul Hogan (person_id: 26)
(26, 'The Paul Hogan Show', 1973, 2000000),
-- Hamish Blake (person_id: 27)
(27, 'Hamish & Andy’s Gap Year', 2011, 850000),
-- Andy Lee (person_id: 28)
(28, 'True Story with Hamish & Andy', 2017, 750000),
-- Celeste Barber (person_id: 29)
(29, 'Celeste Barber: Fine, Thanks Tour', 2021, 500000),
-- Joel Creasey (person_id: 30)
(30, 'Joel Creasey: Fame Whore', 2014, 200000),
-- Wil Anderson (person_id: 31)
(31, 'Wilosophy Live', 2017, 400000),
(31, 'Wil Anderson: Problem Child', 2015, 350000),
-- Tom Gleeson (person_id: 32)
(32, 'Hard Quiz Live Tour', 2019, 300000),
-- Dave Hughes (person_id: 33)
(33, 'Hughesy, We Have a Problem – Live', 2018, 450000),
-- Shaun Micallef (person_id: 34)
(34, 'Shaun Micallef\'s Mad As Hell', 2012, 650000),
-- Carrie Bickmore (person_id: 43)
(43, 'The Project Comedy Segments', 2015, NULL);

-- Fashion Table DONE
CREATE TABLE Fashion (
    fashion_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT,
    brand_name VARCHAR(100),
    fashion_role VARCHAR(50),
    year_featured INT,
    FOREIGN KEY (person_id) REFERENCES People(person_id)
);

INSERT INTO Fashion (person_id, brand_name, fashion_role, year_featured) VALUES
-- Nicole Kidman (person_id: 2)
(2, 'Chanel', 'Fragrance Ambassador', 2017),  -- Chanel No.5 (2017-present)
-- Samara Weaving (person_id: 7)
(7, 'Paper Magazine', 'Featured Model', 2016),  -- "Break the Internet" issue
-- Iggy Azalea (person_id: 16)
(16, 'Versace', 'Collaborator', 2018),  -- Capsule collection (SS2018)
-- Samantha Harris (person_id: 35)
(35, 'David Jones', 'Brand Ambassador', 2014),  -- Australian retail campaign
-- Adut Akech (person_id: 36)
(36, 'Saint Laurent', 'Runway Model', 2019),  -- Exclusive runway appearances
-- Gemma Ward (person_id: 37)
(37, 'Prada', 'Runway Model', 2006),  -- Return to runway after hiatus
-- Elle Macpherson (person_id: 38)
(38, 'Elle Macpherson Intimates', 'Founder/Model', 2003),  -- Launched her brand
-- Miranda Kerr (person_id: 39)
(39, 'Victoria\'s Secret', 'Runway Angel', 2011),  -- VS Fashion Show
-- Abbey Lee (person_id: 40)
(40, 'Gucci', 'Campaign Model', 2016),  -- Fall/Winter 2016 campaign
-- Jordan Barrett (person_id: 41)
(41, 'Outland Denim', 'Sustainability Ambassador', 2018),  -- Ethical fashion collab
-- Sophie Monk (person_id: 48)
(48, 'Myer Australia', 'Brand Ambassador', 2014);  -- Seasonal campaigns

-- Broadcasting Table DONE
CREATE TABLE Broadcasting (
    broadcasting_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT,
    program_title VARCHAR(100),
    media_type VARCHAR(50), -- TV, Radio, Podcast, Online, Voice-over
    year_started INT,
    FOREIGN KEY (person_id) REFERENCES People(person_id)
);

INSERT INTO Broadcasting (person_id, program_title, media_type, year_started) VALUES
-- Briggs (Adam Briggs) (person_id: 21)
(21, 'ABC News Breakfast (Guest Host)', 'TV', 2020),
(21, 'The Set (ABC Music)', 'TV', 2018),
-- Hamish Blake (person_id: 27)
(27, 'Hamish & Andy (Fox FM)', 'Radio', 2006),
(27, 'Hamish & Andy\'s "Perfect Holiday"', 'TV', 2022),
-- Andy Lee (person_id: 28)
(28, 'LEGO Masters Australia', 'TV', 2019),
(28, 'Hamish & Andy (2Day FM)', 'Radio', 2003),
-- Celeste Barber (person_id: 29)
(29, 'Celeste Barber: Fine, Thanks', 'Online', 2021),
-- Joel Creasey (person_id: 30)
(30, 'Eurovision: Australia Decides', 'TV', 2019),
(30, 'The Project (Guest Host)', 'TV', 2015),
-- Wil Anderson (person_id: 31)
(31, 'Gruen (ABC TV)', 'TV', 2008),
(31, 'Wilosophy Podcast', 'Podcast', 2014),
-- Tom Gleeson (person_id: 32)
(32, 'Hard Quiz (ABC TV)', 'TV', 2016),
(32, 'Weekly With Tom Gleeson (ABC Radio)', 'Radio', 2021),
-- Dave Hughes (person_id: 33)
(33, 'Hughesy, We Have a Problem (Network 10)', 'TV', 2018),
(33, 'The Hughesy Show (2Day FM)', 'Radio', 2004),
-- Shaun Micallef (person_id: 34)
(34, 'Shaun Micallef\'s Mad As Hell (ABC TV)', 'TV', 2012),
(34, 'Talkin\' \'Bout Your Generation', 'TV', 2009),
-- Elle Macpherson (person_id: 38)
(38, 'Britain & Ireland\'s Next Top Model (Sky Living)', 'TV', 2013),
-- Osher Günsberg (person_id: 42)
(42, 'The Bachelor Australia (Network 10)', 'TV', 2013),
(42, 'Australian Idol (Host)', 'TV', 2003),
-- Carrie Bickmore (person_id: 43)
(43, 'The Project (Network 10)', 'TV', 2009),
(43, 'Carrie & Tommy (Hit Network)', 'Radio', 2017),
-- Waleed Aly (person_id: 44)
(44, 'The Project (Network 10)', 'TV', 2015),
(44, 'RN Breakfast (ABC Radio)', 'Radio', 2012),
-- Lisa Wilkinson (person_id: 45)
(45, 'The Today Show (Nine Network)', 'TV', 2007),
(45, 'The Project (Network 10)', 'TV', 2018),
-- Peter Overton (person_id: 46)
(46, 'Nine News Sydney (Weeknights)', 'TV', 2009),
-- Leigh Sales (person_id: 47)
(47, '7.30 (ABC TV)', 'TV', 2011),
(47, 'Australian Story (Narrator)', 'TV', 2006),
-- Sophie Monk (person_id: 48)
(48, 'Love Island Australia (Nine Network)', 'TV', 2018),
(48, 'The Bachelorette Australia (Network 10)', 'TV', 2017),
-- Erin Molan (person_id: 49)
(49, 'NRL Footy Show (Nine Network)', 'TV', 2014),
(49, '2GB Continuous Call Team', 'Radio', 2016),
-- Jessica Rowe (person_id: 50)
(50, 'Studio 10 (Network 10)', 'TV', 2013),
(50, 'The Morning Show (Channel 7)', 'TV', 2007);


-- Work Table
CREATE TABLE Work (
    work_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    work_type ENUM('movie', 'music', 'comedy', 'fashion', 'broadcasting'),
    year_created INT,
    -- Foreign keys for each work type
    movie_id INT NULL,
    music_id INT NULL,
    comedy_id INT NULL,
    fashion_id INT NULL,
    broadcasting_id INT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (music_id) REFERENCES Music(music_id),
    FOREIGN KEY (comedy_id) REFERENCES Comedy(comedy_id),
    FOREIGN KEY (fashion_id) REFERENCES Fashion(fashion_id),
    FOREIGN KEY (broadcasting_id) REFERENCES Broadcasting(broadcasting_id)
);

-- Insert statements with foreign key references
INSERT INTO Work (title, work_type, year_created, movie_id, music_id, comedy_id, fashion_id, broadcasting_id) VALUES
-- Movies section DONE 
('The Greatest Showman', 'movie', 2017, 1, NULL, NULL, NULL, NULL),              -- Hugh Jackman (movie_id 1)
('Logan', 'movie', 2017, 2, NULL, NULL, NULL, NULL),                             -- Hugh Jackman (movie_id 2)
('X-Men: Days of Future Past', 'movie', 2014, 3, NULL, NULL, NULL, NULL),        -- Hugh Jackman (movie_id 3)
('Moulin Rouge!', 'movie', 2001, 4, NULL, NULL, NULL, NULL),                     -- Nicole Kidman (movie_id 4)
('Big Little Lies', 'movie', 2017, 5, NULL, NULL, NULL, NULL),                   -- Nicole Kidman (movie_id 5)
('The Others', 'movie', 2001, 6, NULL, NULL, NULL, NULL),                        -- Nicole Kidman (movie_id 6)
('Barbie', 'movie', 2023, 7, NULL, NULL, NULL, NULL),                            -- Margot Robbie (movie_id 7)
('The Wolf of Wall Street', 'movie', 2013, 8, NULL, NULL, NULL, NULL),           -- Margot Robbie (movie_id 8)
('I, Tonya', 'movie', 2017, 9, NULL, NULL, NULL, NULL),                          -- Margot Robbie (movie_id 9)
('Thor: Ragnarok', 'movie', 2017, 10, NULL, NULL, NULL, NULL),                   -- Chris Hemsworth (movie_id 10)
('Extraction', 'movie', 2020, 11, NULL, NULL, NULL, NULL),                       -- Chris Hemsworth (movie_id 11)
('Rush', 'movie', 2013, 12, NULL, NULL, NULL, NULL),                             -- Chris Hemsworth (movie_id 12)
('Hereditary', 'movie', 2018, 13, NULL, NULL, NULL, NULL),                       -- Toni Collette (movie_id 13)
('The Sixth Sense', 'movie', 1999, 14, NULL, NULL, NULL, NULL),                  -- Toni Collette (movie_id 14)
('Muriel''s Wedding', 'movie', 1994, 15, NULL, NULL, NULL, NULL),                -- Toni Collette (movie_id 15)
('The Gift', 'movie', 2015, 16, NULL, NULL, NULL, NULL),                         -- Joel Edgerton (movie_id 16)
('Bright', 'movie', 2017, 17, NULL, NULL, NULL, NULL),                           -- Joel Edgerton (movie_id 17)
('Warrior', 'movie', 2011, 18, NULL, NULL, NULL, NULL),                          -- Joel Edgerton (movie_id 18)
('Ready or Not', 'movie', 2019, 19, NULL, NULL, NULL, NULL),                     -- Samara Weaving (movie_id 19)
('The Babysitter', 'movie', 2017, 20, NULL, NULL, NULL, NULL),                   -- Samara Weaving (movie_id 20)
('Bill & Ted Face the Music', 'movie', 2020, 21, NULL, NULL, NULL, NULL),        -- Samara Weaving (movie_id 21)
('The Mentalist', 'movie', 2008, 22, NULL, NULL, NULL, NULL),                    -- Simon Baker (movie_id 22)
('The Devil Wears Prada', 'movie', 2006, 23, NULL, NULL, NULL, NULL),            -- Simon Baker (movie_id 23)
('Land of the Dead', 'movie', 2005, 24, NULL, NULL, NULL, NULL),                 -- Simon Baker (movie_id 24)
('Wedding Crashers', 'movie', 2005, 25, NULL, NULL, NULL, NULL),                 -- Isla Fisher (movie_id 25)
('Confessions of a Shopaholic', 'movie', 2009, 26, NULL, NULL, NULL, NULL),      -- Isla Fisher (movie_id 26)
('Now You See Me', 'movie', 2013, 27, NULL, NULL, NULL, NULL),                   -- Isla Fisher (movie_id 27)
('Memento', 'movie', 2000, 28, NULL, NULL, NULL, NULL),                          -- Guy Pearce (movie_id 28)
('L.A. Confidential', 'movie', 1997, 29, NULL, NULL, NULL, NULL),                -- Guy Pearce (movie_id 29)
('The King''s Speech', 'movie', 2010, 30, NULL, NULL, NULL, NULL),               -- Guy Pearce (movie_id 30)
('Spud', 'movie', 2010, 31, NULL, NULL, NULL, NULL),                             -- Troye Sivan (movie_id 31)
('Boy Erased', 'movie', 2018, 32, NULL, NULL, NULL, NULL),                       -- Troye Sivan (movie_id 32)
('The Sapphires', 'movie', 2012, 33, NULL, NULL, NULL, NULL),                    -- Briggs (Adam Briggs) (movie_id 33)
('Pitch Perfect', 'movie', 2012, 34, NULL, NULL, NULL, NULL),                    -- Rebel Wilson (movie_id 34)
('Isn''t It Romantic', 'movie', 2019, 35, NULL, NULL, NULL, NULL),               -- Rebel Wilson (movie_id 35)
('Crocodile Dundee', 'movie', 1986, 36, NULL, NULL, NULL, NULL),                 -- Paul Hogan (movie_id 36)
('Lightning Jack', 'movie', 1994, 37, NULL, NULL, NULL, NULL),                   -- Paul Hogan (movie_id 37)
('Senior Year', 'movie', 2022, 38, NULL, NULL, NULL, NULL),                      -- Celeste Barber (movie_id 38)
('Bad Eggs', 'movie', 2003, 39, NULL, NULL, NULL, NULL),                         -- Shaun Micallef (movie_id 39)
('The Strangers', 'movie', 2008, 40, NULL, NULL, NULL, NULL),                    -- Gemma Ward (movie_id 40)
('Pirates of the Caribbean: On Stranger Tides', 'movie', 2011, 41, NULL, NULL, NULL, NULL), -- Gemma Ward (movie_id 41)
('The Edge', 'movie', 1997, 42, NULL, NULL, NULL, NULL),                         -- Elle Macpherson (movie_id 42)
('Batman & Robin', 'movie', 1997, 43, NULL, NULL, NULL, NULL),                   -- Elle Macpherson (movie_id 43)
('Mad Max: Fury Road', 'movie', 2015, 44, NULL, NULL, NULL, NULL),               -- Abbey Lee (movie_id 44)
('The Neon Demon', 'movie', 2016, 45, NULL, NULL, NULL, NULL),                   -- Abbey Lee (movie_id 45)
('Date Night', 'movie', 2010, 46, NULL, NULL, NULL, NULL),                       -- Sophie Monk (movie_id 46)


-- Music section DONE
('The Greatest Showman Soundtrack', 'music', 2017, NULL, 1, NULL, NULL, NULL),   -- Hugh Jackman (music_id 1)
('A Million Dreams', 'music', 2017, NULL, 2, NULL, NULL, NULL),                  -- Hugh Jackman (music_id 2)
('Beautiful Awkward Pictures', 'music', 2006, NULL, 3, NULL, NULL, NULL),        -- Toni Collette (music_id 3)
('Mr. Chicken', 'music', 2006, NULL, 4, NULL, NULL, NULL),                       -- Toni Collette (music_id 4)
('Broken Bones', 'music', 2014, NULL, 5, NULL, NULL, NULL),                      -- Guy Pearce (music_id 5)
('Storm', 'music', 2014, NULL, 6, NULL, NULL, NULL),                             -- Guy Pearce (music_id 6)
('1000 Forms of Fear', 'music', 2014, NULL, 7, NULL, NULL, NULL),                -- Sia Furler (music_id 7)
('This Is Acting', 'music', 2016, NULL, 8, NULL, NULL, NULL),                    -- Sia Furler (music_id 8)
('Chandelier', 'music', 2014, NULL, 9, NULL, NULL, NULL),                        -- Sia Furler (music_id 9)
('Cheap Thrills', 'music', 2016, NULL, 10, NULL, NULL, NULL),                    -- Sia Furler (music_id 10)
('Armageddon', 'music', 2012, NULL, 11, NULL, NULL, NULL),                       -- Guy Sebastian (music_id 11)
('Beautiful Life', 'music', 2014, NULL, 12, NULL, NULL, NULL),                   -- Guy Sebastian (music_id 12)
('Angels Brought Me Here', 'music', 2003, NULL, 13, NULL, NULL, NULL),           -- Guy Sebastian (music_id 13)
('Battle Scars (with Lupe Fiasco)', 'music', 2012, NULL, 14, NULL, NULL, NULL),   -- Guy Sebastian (music_id 14)
('Ripcord', 'music', 2016, NULL, 15, NULL, NULL, NULL),                           -- Keith Urban (music_id 15)
('The Speed of Now Part 1', 'music', 2020, NULL, 16, NULL, NULL, NULL),           -- Keith Urban (music_id 16)
('Blue Ain\'t Your Color', 'music', 2016, NULL, 17, NULL, NULL, NULL),            -- Keith Urban (music_id 17)
('Innocent Eyes', 'music', 2003, NULL, 18, NULL, NULL, NULL),                     -- Delta Goodrem (music_id 18)
('Delta', 'music', 2007, NULL, 19, NULL, NULL, NULL),                             -- Delta Goodrem (music_id 19)
('Born to Try', 'music', 2002, NULL, 20, NULL, NULL, NULL),                       -- Delta Goodrem (music_id 20)
('Beautiful', 'music', 2013, NULL, 21, NULL, NULL, NULL),                         -- Jessica Mauboy (music_id 21)
('Hilda', 'music', 2019, NULL, 22, NULL, NULL, NULL),                             -- Jessica Mauboy (music_id 22)
('Running Back (feat. Flo Rida)', 'music', 2008, NULL, 23, NULL, NULL, NULL),     -- Jessica Mauboy (music_id 23)
('The New Classic', 'music', 2014, NULL, 24, NULL, NULL, NULL),                   -- Iggy Azalea (music_id 24)
('In My Defense', 'music', 2019, NULL, 25, NULL, NULL, NULL),                     -- Iggy Azalea (music_id 25)
('Fancy (feat. Charli XCX)', 'music', 2014, NULL, 26, NULL, NULL, NULL),          -- Iggy Azalea (music_id 26)
('Blue Neighbourhood', 'music', 2015, NULL, 27, NULL, NULL, NULL),                -- Troye Sivan (music_id 27)
('Youth', 'music', 2015, NULL, 28, NULL, NULL, NULL),                             -- Troye Sivan (music_id 28)
('Fever', 'music', 2001, NULL, 29, NULL, NULL, NULL),                             -- Kylie Minogue (music_id 29)
('Can\'t Get You Out of My Head', 'music', 2001, NULL, 30, NULL, NULL, NULL),     -- Kylie Minogue (music_id 30)
('Dream Your Life Away', 'music', 2014, NULL, 31, NULL, NULL, NULL),              -- Vance Joy (music_id 31)
('Nation of Two', 'music', 2018, NULL, 32, NULL, NULL, NULL),                     -- Vance Joy (music_id 32)
('Riptide', 'music', 2013, NULL, 33, NULL, NULL, NULL),                           -- Vance Joy (music_id 33)
('Currents', 'music', 2015, NULL, 34, NULL, NULL, NULL),                          -- Tame Impala (music_id 34)
('The Less I Know the Better', 'music', 2015, NULL, 35, NULL, NULL, NULL),        -- Tame Impala (music_id 35)
('Sheplife', 'music', 2014, NULL, 36, NULL, NULL, NULL),                          -- Briggs (music_id 36)
('Reclaim Australia', 'music', 2016, NULL, 37, NULL, NULL, NULL),                 -- Briggs (music_id 37)
('The Children Came Back', 'music', 2015, NULL, 38, NULL, NULL, NULL),            -- Briggs (music_id 38)
('The Sound of White', 'music', 2004, NULL, 39, NULL, NULL, NULL),                -- Missy Higgins (music_id 39)
('Scar', 'music', 2004, NULL, 40, NULL, NULL, NULL),                              -- Missy Higgins (music_id 40)
('Talk', 'music', 2015, NULL, 41, NULL, NULL, NULL),                              -- Daniel Johns (music_id 41)
('Diorama', 'music', 2002, NULL, 42, NULL, NULL, NULL),                           -- Daniel Johns (music_id 42)
('Aerial Love', 'music', 2015, NULL, 43, NULL, NULL, NULL),                       -- Daniel Johns (music_id 43)
('Sometimes I Sit and Think, and Sometimes I Just Sit', 'music', 2015, NULL, 44, NULL, NULL, NULL), -- Courtney Barnett (music_id 44)
('Pedestrian at Best', 'music', 2015, NULL, 45, NULL, NULL, NULL),                -- Courtney Barnett (music_id 45)
('Calendar Girl', 'music', 2003, NULL, 46, NULL, NULL, NULL),                     -- Sophie Monk (music_id 46)
('Inside Outside', 'music', 2003, NULL, 47, NULL, NULL, NULL),                    -- Sophie Monk (music_id 47)

-- Comedy section DONE
('Tony Awards Host', 'comedy', 2004, NULL, NULL, 1, NULL, NULL),              -- Hugh Jackman (comedy_id 1)
('Wedding Crashers Improv', 'comedy', 2005, NULL, NULL, 2, NULL, NULL),       -- Isla Fisher (comedy_id 2)
('Briggsy Bear Comedy Tour', 'comedy', 2018, NULL, NULL, 3, NULL, NULL),      -- Briggs (Adam Briggs) (comedy_id 3)
('LOL: Last One Laughing Australia', 'comedy', 2020, NULL, NULL, 4, NULL, NULL), -- Rebel Wilson (comedy_id 4)
('The Paul Hogan Show', 'comedy', 1973, NULL, NULL, 5, NULL, NULL),           -- Paul Hogan (comedy_id 5)
('Hamish & Andy’s Gap Year', 'comedy', 2011, NULL, NULL, 6, NULL, NULL),      -- Hamish Blake (comedy_id 6)
('True Story with Hamish & Andy', 'comedy', 2017, NULL, NULL, 7, NULL, NULL), -- Andy Lee (comedy_id 7)
('Celeste Barber: Fine, Thanks Tour', 'comedy', 2021, NULL, NULL, 8, NULL, NULL), -- Celeste Barber (comedy_id 8)
('Joel Creasey: Fame Whore', 'comedy', 2014, NULL, NULL, 9, NULL, NULL),       -- Joel Creasey (comedy_id 9)
('Wilosophy Live', 'comedy', 2017, NULL, NULL, 10, NULL, NULL),               -- Wil Anderson (comedy_id 10)
('Wil Anderson: Problem Child', 'comedy', 2015, NULL, NULL, 11, NULL, NULL),  -- Wil Anderson (comedy_id 11)
('Hard Quiz Live Tour', 'comedy', 2019, NULL, NULL, 12, NULL, NULL),          -- Tom Gleeson (comedy_id 12)
('Hughesy, We Have a Problem – Live', 'comedy', 2018, NULL, NULL, 13, NULL, NULL), -- Dave Hughes (comedy_id 13)
('Shaun Micallef\'s Mad As Hell', 'comedy', 2012, NULL, NULL, 14, NULL, NULL), -- Shaun Micallef (comedy_id 14)
('The Project Comedy Segments', 'comedy', 2015, NULL, NULL, 15, NULL, NULL),  -- Carrie Bickmore (comedy_id 15)

-- Fashion DONE
('Chanel', 'fashion', 2017, NULL, NULL, NULL, 1, NULL),              -- Nicole Kidman (fashion_id 1)
('Paper Magazine', 'fashion', 2016, NULL, NULL, NULL, 2, NULL),       -- Samara Weaving (fashion_id 2)
('Versace', 'fashion', 2018, NULL, NULL, NULL, 3, NULL),              -- Iggy Azalea (fashion_id 3)
('David Jones', 'fashion', 2014, NULL, NULL, NULL, 4, NULL),          -- Samantha Harris (fashion_id 4)
('Saint Laurent', 'fashion', 2019, NULL, NULL, NULL, 5, NULL),        -- Adut Akech (fashion_id 5)
('Prada', 'fashion', 2006, NULL, NULL, NULL, 6, NULL),                -- Gemma Ward (fashion_id 6)
('Elle Macpherson Intimates', 'fashion', 2003, NULL, NULL, NULL, 7, NULL), -- Elle Macpherson (fashion_id 7)
('Victoria\'s Secret', 'fashion', 2011, NULL, NULL, NULL, 8, NULL),    -- Miranda Kerr (fashion_id 8)
('Gucci', 'fashion', 2016, NULL, NULL, NULL, 9, NULL),                -- Abbey Lee (fashion_id 9)
('Outland Denim', 'fashion', 2018, NULL, NULL, NULL, 10, NULL),       -- Jordan Barrett (fashion_id 10)
('Myer Australia', 'fashion', 2014, NULL, NULL, NULL, 11, NULL),     -- Sophie Monk (fashion_id 11)

-- Broadcasting DONE 
('ABC News Breakfast (Guest Host)', 'broadcasting', 2020, NULL, NULL, NULL, NULL, 1),        -- Briggs (Adam Briggs)
('The Set (ABC Music)', 'broadcasting', 2018, NULL, NULL, NULL, NULL, 2),                    -- Briggs (Adam Briggs)
('Hamish & Andy (Fox FM)', 'broadcasting', 2006, NULL, NULL, NULL, NULL, 3),                 -- Hamish Blake
('Hamish & Andy\'s "Perfect Holiday"', 'broadcasting', 2022, NULL, NULL, NULL, NULL, 4),     -- Hamish Blake
('LEGO Masters Australia', 'broadcasting', 2019, NULL, NULL, NULL, NULL, 5),                 -- Andy Lee
('Hamish & Andy (2Day FM)', 'broadcasting', 2003, NULL, NULL, NULL, NULL, 6),                -- Andy Lee
('Celeste Barber: Fine, Thanks', 'broadcasting', 2021, NULL, NULL, NULL, NULL, 7),           -- Celeste Barber
('Eurovision: Australia Decides', 'broadcasting', 2019, NULL, NULL, NULL, NULL, 8),          -- Joel Creasey
('The Project (Guest Host)', 'broadcasting', 2015, NULL, NULL, NULL, NULL, 9),               -- Joel Creasey
('Gruen (ABC TV)', 'broadcasting', 2008, NULL, NULL, NULL, NULL, 10),                       -- Wil Anderson
('Wilosophy Podcast', 'broadcasting', 2014, NULL, NULL, NULL, NULL, 11),                    -- Wil Anderson
('Hard Quiz (ABC TV)', 'broadcasting', 2016, NULL, NULL, NULL, NULL, 12),                   -- Tom Gleeson
('Weekly With Tom Gleeson (ABC Radio)', 'broadcasting', 2021, NULL, NULL, NULL, NULL, 13),   -- Tom Gleeson
('Hughesy, We Have a Problem (Network 10)', 'broadcasting', 2018, NULL, NULL, NULL, NULL, 14), -- Dave Hughes
('The Hughesy Show (2Day FM)', 'broadcasting', 2004, NULL, NULL, NULL, NULL, 15),            -- Dave Hughes
('Shaun Micallef\'s Mad As Hell (ABC TV)', 'broadcasting', 2012, NULL, NULL, NULL, NULL, 16), -- Shaun Micallef
('Talkin\' \'Bout Your Generation', 'broadcasting', 2009, NULL, NULL, NULL, NULL, 17),        -- Shaun Micallef
('Britain & Ireland\'s Next Top Model (Sky Living)', 'broadcasting', 2013, NULL, NULL, NULL, NULL, 18), -- Elle Macpherson
('The Bachelor Australia (Network 10)', 'broadcasting', 2013, NULL, NULL, NULL, NULL, 19),   -- Osher Günsberg
('Australian Idol (Host)', 'broadcasting', 2003, NULL, NULL, NULL, NULL, 20),                -- Osher Günsberg
('The Project (Network 10)', 'broadcasting', 2009, NULL, NULL, NULL, NULL, 21),              -- Carrie Bickmore
('Carrie & Tommy (Hit Network)', 'broadcasting', 2017, NULL, NULL, NULL, NULL, 22),          -- Carrie Bickmore
('The Project (Network 10)', 'broadcasting', 2015, NULL, NULL, NULL, NULL, 23),              -- Waleed Aly
('RN Breakfast (ABC Radio)', 'broadcasting', 2012, NULL, NULL, NULL, NULL, 24),              -- Waleed Aly
('The Today Show (Nine Network)', 'broadcasting', 2007, NULL, NULL, NULL, NULL, 25),         -- Lisa Wilkinson
('The Project (Network 10)', 'broadcasting', 2018, NULL, NULL, NULL, NULL, 26),              -- Lisa Wilkinson
('Nine News Sydney (Weeknights)', 'broadcasting', 2009, NULL, NULL, NULL, NULL, 27),         -- Peter Overton
('7.30 (ABC TV)', 'broadcasting', 2011, NULL, NULL, NULL, NULL, 28),                         -- Leigh Sales
('Australian Story (Narrator)', 'broadcasting', 2006, NULL, NULL, NULL, NULL, 29),           -- Leigh Sales
('Love Island Australia (Nine Network)', 'broadcasting', 2018, NULL, NULL, NULL, NULL, 30),  -- Sophie Monk
('The Bachelorette Australia (Network 10)', 'broadcasting', 2017, NULL, NULL, NULL, NULL, 31), -- Sophie Monk
('NRL Footy Show (Nine Network)', 'broadcasting', 2014, NULL, NULL, NULL, NULL, 32),         -- Erin Molan
('2GB Continuous Call Team', 'broadcasting', 2016, NULL, NULL, NULL, NULL, 33),              -- Erin Molan
('Studio 10 (Network 10)', 'broadcasting', 2013, NULL, NULL, NULL, NULL, 34),                -- Jessica Rowe
('The Morning Show (Channel 7)', 'broadcasting', 2007, NULL, NULL, NULL, NULL, 35);          -- Jessica Rowe

-- Contributions Table
CREATE TABLE Contributions (
    contribution_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT NOT NULL,
    work_id INT NOT NULL,
    role VARCHAR(100),
    FOREIGN KEY (person_id) REFERENCES People(person_id),
    FOREIGN KEY (work_id) REFERENCES Work(work_id)
);

-- MOVIES DONE
INSERT INTO Contributions (person_id, work_id, role) VALUES
(1, 1, 'Lead Actor'),          -- Hugh Jackman in The Greatest Showman
(1, 2, 'Lead Actor'),          -- Hugh Jackman in Logan
(1, 3, 'Lead Actor'),          -- Hugh Jackman in X-Men: Days of Future Past
(2, 4, 'Lead Actress'),        -- Nicole Kidman in Moulin Rouge!
(2, 5, 'Lead Actress'),        -- Nicole Kidman in Big Little Lies
(2, 6, 'Lead Actress'),        -- Nicole Kidman in The Others
(3, 7, 'Lead Actress'),        -- Margot Robbie in Barbie
(3, 8, 'Supporting Actress'),  -- Margot Robbie in The Wolf of Wall Street
(3, 9, 'Lead Actress'),        -- Margot Robbie in I, Tonya
(4, 10, 'Lead Actor'),         -- Chris Hemsworth in Thor: Ragnarok
(4, 11, 'Lead Actor'),         -- Chris Hemsworth in Extraction
(4, 12, 'Lead Actor'),         -- Chris Hemsworth in Rush
(5, 13, 'Lead Actress'),       -- Toni Collette in Hereditary
(5, 14, 'Supporting Actress'), -- Toni Collette in The Sixth Sense
(5, 15, 'Lead Actress'),       -- Toni Collette in Muriel's Wedding
(6, 16, 'Lead Actor/Director'),-- Joel Edgerton in The Gift
(6, 17, 'Lead Actor'),         -- Joel Edgerton in Bright
(6, 18, 'Lead Actor'),         -- Joel Edgerton in Warrior
(7, 19, 'Lead Actress'),       -- Samara Weaving in Ready or Not
(7, 20, 'Lead Actress'),       -- Samara Weaving in The Babysitter
(7, 21, 'Supporting Actress'), -- Samara Weaving in Bill & Ted Face the Music
(8, 22, 'Lead Actor'),         -- Simon Baker in The Mentalist
(8, 23, 'Supporting Actor'),   -- Simon Baker in The Devil Wears Prada
(8, 24, 'Lead Actor'),         -- Simon Baker in Land of the Dead
(9, 25, 'Supporting Actress'), -- Isla Fisher in Wedding Crashers
(9, 26, 'Lead Actress'),       -- Isla Fisher in Confessions of a Shopaholic
(9, 27, 'Supporting Actress'), -- Isla Fisher in Now You See Me
(10, 28, 'Lead Actor'),        -- Guy Pearce in Memento
(10, 29, 'Supporting Actor'),  -- Guy Pearce in L.A. Confidential
(10, 30, 'Supporting Actor'),  -- Guy Pearce in The King's Speech
(17, 31, 'Supporting Actor'),  -- Troye Sivan in Spud
(17, 32, 'Supporting Actor'),  -- Troye Sivan in Boy Erased
(21, 33, 'Supporting Actor'),  -- Briggs (Adam Briggs) in The Sapphires
(25, 34, 'Supporting Actress'),-- Rebel Wilson in Pitch Perfect
(25, 35, 'Lead Actress'),      -- Rebel Wilson in Isn't It Romantic
(26, 36, 'Lead Actor/Writer'), -- Paul Hogan in Crocodile Dundee
(26, 37, 'Lead Actor'),        -- Paul Hogan in Lightning Jack
(29, 38, 'Supporting Actress'),-- Celeste Barber in Senior Year
(34, 39, 'Lead Actor'),        -- Shaun Micallef in Bad Eggs
(37, 40, 'Supporting Actress'),-- Gemma Ward in The Strangers
(37, 41, 'Supporting Actress'),-- Gemma Ward in Pirates of the Caribbean: On Stranger Tides
(38, 42, 'Supporting Actress'),-- Elle Macpherson in The Edge
(38, 43, 'Supporting Actress'),-- Elle Macpherson in Batman & Robin
(40, 44, 'Supporting Actress'),-- Abbey Lee in Mad Max: Fury Road
(40, 45, 'Supporting Actress'),-- Abbey Lee in The Neon Demon
(48, 46, 'Supporting Actress'),-- Sophie Monk in Date Night

-- Music Contributions DONE
(1, 47, 'Vocals'),              -- Hugh Jackman in The Greatest Showman Soundtrack
(1, 48, 'Vocals'),              -- Hugh Jackman in A Million Dreams
(5, 49, 'Vocals'),              -- Toni Collette in Beautiful Awkward Pictures
(5, 50, 'Vocals'),              -- Toni Collette in Mr. Chicken
(10, 51, 'Vocals/Guitarist'),   -- Guy Pearce in Broken Bones
(10, 52, 'Vocals/Guitarist'),   -- Guy Pearce in Storm
(11, 53, 'Singer/Songwriter'),  -- Sia Furler in 1000 Forms of Fear
(11, 54, 'Singer/Songwriter'),  -- Sia Furler in This Is Acting
(11, 55, 'Singer/Songwriter'),  -- Sia Furler in Chandelier
(11, 56, 'Singer/Songwriter'), -- Sia Furler in Cheap Thrills
(12, 57, 'Singer'),            -- Guy Sebastian in Armageddon
(12, 58, 'Singer'),            -- Guy Sebastian in Beautiful Life
(12, 59, 'Singer'),            -- Guy Sebastian in Angels Brought Me Here
(12, 60, 'Singer'),            -- Guy Sebastian in Battle Scars
(13, 61, 'Singer/Guitarist'),  -- Keith Urban in Ripcord
(13, 62, 'Singer/Guitarist'),  -- Keith Urban in The Speed of Now Part 1
(13, 63, 'Singer/Guitarist'),  -- Keith Urban in Blue Ain't Your Color
(14, 64, 'Singer/Pianist'),    -- Delta Goodrem in Innocent Eyes
(14, 65, 'Singer/Pianist'),    -- Delta Goodrem in Delta
(14, 66, 'Singer/Pianist'),    -- Delta Goodrem in Born to Try
(15, 67, 'Singer'),            -- Jessica Mauboy in Beautiful
(15, 68, 'Singer'),            -- Jessica Mauboy in Hilda
(15, 69, 'Singer'),            -- Jessica Mauboy in Running Back
(16, 70, 'Rapper'),            -- Iggy Azalea in The New Classic
(16, 71, 'Rapper'),            -- Iggy Azalea in In My Defense
(16, 72, 'Rapper'),            -- Iggy Azalea in Fancy
(17, 73, 'Singer/Songwriter'), -- Troye Sivan in Blue Neighbourhood
(17, 74, 'Singer/Songwriter'), -- Troye Sivan in Youth
(18, 75, 'Singer'),            -- Kylie Minogue in Fever
(18, 76, 'Singer'),            -- Kylie Minogue in Can't Get You Out of My Head
(19, 77, 'Singer/Guitarist'),  -- Vance Joy in Dream Your Life Away
(19, 78, 'Singer/Guitarist'),  -- Vance Joy in Nation of Two
(19, 79, 'Singer/Guitarist'),  -- Vance Joy in Riptide
(20, 80, 'Multi-instrumentalist'), -- Tame Impala in Currents
(20, 81, 'Multi-instrumentalist'), -- Tame Impala in The Less I Know the Better
(21, 82, 'Rapper'),            -- Briggs in Sheplife
(21, 83, 'Rapper'),            -- Briggs in Reclaim Australia
(21, 84, 'Rapper'),            -- Briggs in The Children Came Back
(22, 85, 'Singer/Pianist'),    -- Missy Higgins in The Sound of White
(22, 86, 'Singer/Pianist'),    -- Missy Higgins in Scar
(23, 87, 'Singer/Guitarist'),  -- Daniel Johns in Talk
(23, 88, 'Singer/Guitarist'),  -- Daniel Johns in Diorama
(23, 89, 'Singer/Guitarist'),  -- Daniel Johns in Aerial Love
(24, 90, 'Singer/Guitarist'),  -- Courtney Barnett in Sometimes I Sit and Think...
(24, 91, 'Singer/Guitarist'),  -- Courtney Barnett in Pedestrian at Best
(48, 92, 'Singer'),            -- Sophie Monk in Calendar Girl
(48, 93, 'Singer'),            -- Sophie Monk in Inside Outside

-- Comedy contributions DONE
(1, 94, 'Host'),              -- Hugh Jackman in Tony Awards Host
(9, 95, 'Improviser'),        -- Isla Fisher in Wedding Crashers Improv
(21, 96, 'Stand-up Comedian'),-- Briggs (Adam Briggs) in Briggsy Bear Comedy Tour
(25, 97, 'Host/Comedian'),    -- Rebel Wilson in LOL: Last One Laughing Australia
(26, 98, 'Creator/Star'),     -- Paul Hogan in The Paul Hogan Show
(27, 99, 'Co-host'),          -- Hamish Blake in Hamish & Andy's Gap Year
(28, 100, 'Co-host'),          -- Andy Lee in True Story with Hamish & Andy
(29, 101, 'Stand-up Comedian'),-- Celeste Barber in Celeste Barber: Fine, Thanks Tour
(30, 102, 'Stand-up Comedian'),-- Joel Creasey in Joel Creasey: Fame Whore
(31, 103, 'Stand-up Comedian'),-- Wil Anderson in Wilosophy Live
(31, 104, 'Stand-up Comedian'),-- Wil Anderson in Wil Anderson: Problem Child
(32, 105, 'Quiz Master'),     -- Tom Gleeson in Hard Quiz Live Tour
(33, 106, 'Stand-up Comedian'),-- Dave Hughes in Hughesy, We Have a Problem – Live
(34, 107, 'Creator/Performer'),-- Shaun Micallef in Shaun Micallef's Mad As Hell
(43, 108, 'Comedic Host'),     -- Carrie Bickmore in The Project Comedy Segments

-- Fashion Industry Contributions DONE 
(2, 109, 'Fragrance Ambassador'),          -- Nicole Kidman for Chanel
(7, 110, 'Featured Model'),                -- Samara Weaving for Paper Magazine
(16, 111, 'Collaborator'),                 -- Iggy Azalea for Versace
(35, 112, 'Brand Ambassador'),             -- Samantha Harris for David Jones
(36, 113, 'Runway Model'),                 -- Adut Akech for Saint Laurent
(37, 114, 'Runway Model'),                 -- Gemma Ward for Prada
(38, 115, 'Founder/Model'),                -- Elle Macpherson for Elle Macpherson Intimates
(39, 116, 'Runway Angel'),                 -- Miranda Kerr for Victoria's Secret
(40, 117, 'Campaign Model'),               -- Abbey Lee for Gucci
(41, 118, 'Sustainability Ambassador'),    -- Jordan Barrett for Outland Denim
(48, 119, 'Brand Ambassador'),             -- Sophie Monk for Myer Australia

-- Broadcasting contributions DONE
(21, 120, 'Guest Host'),              -- Briggs (Adam Briggs) in ABC News Breakfast
(21, 121, 'Presenter'),               -- Briggs (Adam Briggs) in The Set
(27, 122, 'Radio Host'),              -- Hamish Blake in Hamish & Andy (Fox FM)
(27, 123, 'Presenter'),               -- Hamish Blake in Perfect Holiday
(28, 124, 'Host'),                    -- Andy Lee in LEGO Masters Australia
(28, 125, 'Radio Host'),              -- Andy Lee in Hamish & Andy (2Day FM)
(29, 126, 'Creator/Star'),            -- Celeste Barber in Fine, Thanks
(30, 127, 'Host'),                    -- Joel Creasey in Eurovision: Australia Decides
(30, 128, 'Guest Host'),              -- Joel Creasey in The Project
(31, 129, 'Host'),                   -- Wil Anderson in Gruen
(31, 130, 'Podcast Host'),           -- Wil Anderson in Wilosophy
(32, 131, 'Quiz Master'),            -- Tom Gleeson in Hard Quiz
(32, 132, 'Radio Host'),             -- Tom Gleeson in Weekly With Tom Gleeson
(33, 133, 'Host'),                   -- Dave Hughes in Hughesy, We Have a Problem
(33, 134, 'Radio Host'),             -- Dave Hughes in The Hughesy Show
(34, 135, 'Host/Writer'),            -- Shaun Micallef in Mad As Hell
(34, 136, 'Host'),                   -- Shaun Micallef in Talkin' 'Bout Your Generation
(38, 137, 'Host/Judge'),             -- Elle Macpherson in Britain & Ireland's Next Top Model
(42, 138, 'Host'),                   -- Osher Günsberg in The Bachelor Australia
(42, 139, 'Host'),                   -- Osher Günsberg in Australian Idol
(43, 140, 'Host'),                   -- Carrie Bickmore in The Project
(43, 141, 'Radio Host'),             -- Carrie Bickmore in Carrie & Tommy
(44, 142, 'Host'),                   -- Waleed Aly in The Project
(44, 143, 'Radio Host'),             -- Waleed Aly in RN Breakfast
(45, 144, 'Host'),                   -- Lisa Wilkinson in The Today Show
(45, 145, 'Host'),                   -- Lisa Wilkinson in The Project
(46, 146, 'Newsreader'),             -- Peter Overton in Nine News Sydney
(47, 147, 'Host'),                   -- Leigh Sales in 7.30
(47, 148, 'Narrator'),               -- Leigh Sales in Australian Story
(48, 149, 'Host'),                   -- Sophie Monk in Love Island Australia
(48, 150, 'Host'),                   -- Sophie Monk in The Bachelorette Australia
(49, 151, 'Host'),                   -- Erin Molan in NRL Footy Show
(49, 152, 'Radio Host'),             -- Erin Molan in 2GB Continuous Call Team
(50, 153, 'Host'),                   -- Jessica Rowe in Studio 10
(50, 154, 'Host');                   -- Jessica Rowe in The Morning Show


-- Awards table
CREATE TABLE PersonAwards (
    award_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT NOT NULL,
    work_type ENUM('movie', 'music', 'comedy', 'fashion', 'broadcasting'),
    award_name VARCHAR(100) NOT NULL,
    awarding_body VARCHAR(100) NOT NULL,
    award_category VARCHAR(100) NOT NULL,
    award_year INT NOT NULL,
    won BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (person_id) REFERENCES People(person_id)
);

INSERT INTO PersonAwards (person_id, work_type, award_name, awarding_body, award_category, award_year, won) VALUES
-- ACTING AWARDS DONE
-- Hugh Jackman (person_id: 1)
(1, 'movie', 'Golden Globe', 'HFPA', 'Best Actor - Motion Picture Musical/Comedy', 2018, TRUE), -- The Greatest Showman (actual win)
(1, 'movie', 'People\'s Choice Award', 'PCA', 'Favorite Action Movie Star', 2017, TRUE), -- Logan (actual win)
(1, 'movie', 'MTV Movie Award', 'MTV', 'Best Fight', 2014, FALSE), -- X-Men: Days of Future Past (nomination)
-- Nicole Kidman (person_id: 2)
(2, 'movie', 'Golden Globe', 'HFPA', 'Best Actress - Motion Picture Musical/Comedy', 2002, TRUE), -- Moulin Rouge! (actual win)
(2, 'movie', 'Primetime Emmy', 'Television Academy', 'Outstanding Lead Actress in a Limited Series', 2017, TRUE), -- Big Little Lies (actual win)
(2, 'movie', 'Saturn Award', 'Academy of Science Fiction', 'Best Actress', 2002, FALSE), -- The Others (nomination)
-- Margot Robbie (person_id: 3)
(3, 'movie', 'Critics Choice Award', 'CCA', 'Best Actress in a Comedy', 2023, TRUE), -- Barbie (actual win)
(3, 'movie', 'Empire Award', 'Empire Magazine', 'Best Female Newcomer', 2014, TRUE), -- The Wolf of Wall Street (actual win)
(3, 'movie', 'Academy Award', 'AMPAS', 'Best Actress', 2018, FALSE), -- I, Tonya (nomination)
-- Chris Hemsworth (person_id: 4)
(4, 'movie', 'People\'s Choice Award', 'PCA', 'Favorite Action Movie Star', 2018, TRUE), -- Thor: Ragnarok (actual win)
(4, 'movie', 'MTV Movie Award', 'MTV', 'Best Hero', 2020, FALSE), -- Extraction (nomination)
(4, 'movie', 'AACTA International Award', 'AACTA', 'Best Actor', 2014, FALSE), -- Rush (nomination)
-- Toni Collette (person_id: 5)
(5, 'movie', 'Gotham Independent Film Award', 'IFP', 'Best Actress', 2018, FALSE), -- Hereditary (nomination)
(5, 'movie', 'Saturn Award', 'Academy of Science Fiction', 'Best Supporting Actress', 1999, TRUE), -- The Sixth Sense (actual win)
(5, 'movie', 'AACTA Award', 'AACTA', 'Best Actress in a Leading Role', 1994, TRUE), -- Muriel's Wedding (actual win)
-- Joel Edgerton (person_id: 6)
(6, 'movie', 'AACTA Award', 'AACTA', 'Best Direction', 2015, FALSE), -- The Gift (nomination)
(6, 'movie', 'Saturn Award', 'Academy of Science Fiction', 'Best Supporting Actor', 2018, FALSE), -- Bright (nomination)
(6, 'movie', 'National Board of Review', 'NBR', 'Best Cast', 2011, TRUE), -- Warrior (actual win)
-- Samara Weaving (person_id: 7)
(7, 'movie', 'Fangoria Chainsaw Award', 'Fangoria', 'Best Lead Actress', 2020, TRUE), -- Ready or Not (actual win)
(7, 'movie', 'MTV Movie Award', 'MTV', 'Best Frightened Performance', 2018, FALSE), -- The Babysitter (nomination)
(7, 'movie', 'Saturn Award', 'Academy of Science Fiction', 'Best Supporting Actress', 2021, FALSE), -- Bill & Ted Face the Music (nomination)
-- Simon Baker (person_id: 8)
(8, 'movie', 'Golden Globe', 'HFPA', 'Best Actor - Television Series Drama', 2009, FALSE), -- The Mentalist (nomination)
(8, 'movie', 'Screen Actors Guild Award', 'SAG', 'Outstanding Performance by a Cast', 2007, FALSE), -- The Devil Wears Prada (nomination)
(8, 'movie', 'Fangoria Chainsaw Award', 'Fangoria', 'Best Actor', 2006, FALSE), -- Land of the Dead (nomination)
-- Isla Fisher (person_id: 9)
(9, 'movie', 'MTV Movie Award', 'MTV', 'Breakthrough Performance - Female', 2006, FALSE), -- Wedding Crashers (nomination)
(9, 'movie', 'Teen Choice Award', 'Fox', 'Choice Movie Actress: Comedy', 2009, FALSE), -- Confessions of a Shopaholic (nomination)
(9, 'movie', 'People\'s Choice Award', 'PCA', 'Favorite Dramatic Movie Actress', 2014, FALSE), -- Now You See Me (nomination)
-- Guy Pearce (person_id: 10)
(10, 'movie', 'Saturn Award', 'Academy of Science Fiction', 'Best Actor', 2001, FALSE), -- Memento (nomination)
(10, 'movie', 'BAFTA', 'BAFTA', 'Best Actor in a Supporting Role', 1998, FALSE), -- L.A. Confidential (nomination)
(10, 'movie', 'AACTA Award', 'AACTA', 'Best Actor in a Supporting Role', 2010, TRUE), -- The King's Speech (actual win)
-- Troye Sivan (person_id: 17)
(17, 'movie', 'South African Film and Television Award', 'SAFTA', 'Best Supporting Actor', 2011, FALSE), -- Spud (nomination)
(17, 'movie', 'GLAAD Media Award', 'GLAAD', 'Outstanding Film - Wide Release', 2019, TRUE), -- Boy Erased (actual win)
-- Briggs (Adam Briggs) (person_id: 21)
(21, 'movie', 'AACTA Award', 'AACTA', 'Best Original Song', 2012, FALSE), -- The Sapphires (nomination)
-- Rebel Wilson (person_id: 25)
(25, 'movie', 'MTV Movie Award', 'MTV', 'Breakthrough Performance', 2012, FALSE), -- Pitch Perfect (nomination)
(25, 'movie', 'People\'s Choice Award', 'PCA', 'The Comedy Movie Star', 2019, FALSE), -- Isn't It Romantic (nomination)
-- Paul Hogan (person_id: 26)
(26, 'movie', 'Golden Globe', 'HFPA', 'Best Actor - Motion Picture Musical/Comedy', 1987, TRUE), -- Crocodile Dundee (actual win)
(26, 'movie', 'AFI Award', 'AFI', 'Best Original Screenplay', 1986, FALSE), -- Crocodile Dundee (nomination)
(26, 'movie', 'AACTA Award', 'AACTA', 'Best Actor in a Leading Role', 1994, FALSE), -- Lightning Jack (nomination)
-- Celeste Barber (person_id: 29)
(29, 'movie', 'AACTA Award', 'AACTA', 'Best Supporting Actress in a Film', 2022, FALSE), -- Senior Year (nomination)
-- Shaun Micallef (person_id: 34)
(34, 'movie', 'AACTA Award', 'AACTA', 'Best Original Screenplay', 2003, FALSE), -- Bad Eggs (nomination)
-- Gemma Ward (person_id: 37)
(37, 'movie', 'Fangoria Chainsaw Award', 'Fangoria', 'Best Supporting Actress', 2008, FALSE), -- The Strangers (nomination)
(37, 'movie', 'Teen Choice Award', 'Fox', 'Choice Movie Villain', 2011, FALSE), -- Pirates of the Caribbean (nomination)
-- Elle Macpherson (person_id: 38)
(38, 'movie', 'Blockbuster Entertainment Award', 'Blockbuster', 'Favorite Supporting Actress - Drama', 1997, FALSE), -- The Edge (nomination)
(38, 'movie', 'Razzie Award', 'Golden Raspberry', 'Worst Supporting Actress', 1997, FALSE), -- Batman & Robin (nomination)
-- Abbey Lee (person_id: 40)
(40, 'movie', 'Critics Choice Award', 'CCA', 'Best Acting Ensemble', 2015, FALSE), -- Mad Max: Fury Road (nomination)
(40, 'movie', 'Fangoria Chainsaw Award', 'Fangoria', 'Best Supporting Actress', 2016, FALSE), -- The Neon Demon (nomination)
-- Sophie Monk (person_id: 48)
(48, 'movie', 'Teen Choice Award', 'Fox', 'Choice Movie Breakout Female', 2010, FALSE), -- Date Night (nomination)


-- MUSIC AWARDS DONE
-- Hugh Jackman (person_id: 1)
(1, 'music', 'Grammy Award', 'Recording Academy', 'Best Compilation Soundtrack', 2019, TRUE), -- The Greatest Showman Soundtrack (actual win)
(1, 'music', 'Golden Globe', 'HFPA', 'Best Original Song', 2018, FALSE), -- A Million Dreams (nomination)
-- Toni Collette (person_id: 5)
(5, 'music', 'Independent Music Award', 'IMA', 'Best Eclectic Album', 2007, FALSE), -- Beautiful Awkward Pictures (nomination)
-- Guy Pearce (person_id: 10)
(10, 'music', 'AIR Award', 'AIR', 'Best Independent Album', 2015, FALSE), -- Broken Bones (nomination)
-- Sia Furler (person_id: 11)
(11, 'music', 'Grammy Award', 'Recording Academy', 'Best Pop Vocal Album', 2015, TRUE), -- 1000 Forms of Fear (actual win)
(11, 'music', 'ARIA Award', 'ARIA', 'Album of the Year', 2014, TRUE), -- 1000 Forms of Fear (actual win)
(11, 'music', 'MTV VMA', 'MTV', 'Best Choreography', 2014, TRUE), -- Chandelier (actual win)
(11, 'music', 'Grammy Award', 'Recording Academy', 'Best Music Video', 2015, FALSE), -- Chandelier (nomination)
-- Guy Sebastian (person_id: 12)
(12, 'music', 'ARIA Award', 'ARIA', 'Single of the Year', 2003, TRUE), -- Angels Brought Me Here (actual win)
(12, 'music', 'ARIA Award', 'ARIA', 'Highest Selling Single', 2003, TRUE), -- Angels Brought Me Here (actual win)
(12, 'music', 'World Music Award', 'WMA', 'World\'s Best Selling Australian Artist', 2004, TRUE), -- (actual win)
(12, 'music', 'APRA Award', 'APRA', 'Most Played Australian Work', 2013, TRUE), -- Battle Scars (actual win)
-- Keith Urban (person_id: 13)
(13, 'music', 'Grammy Award', 'Recording Academy', 'Best Country Album', 2017, TRUE), -- Ripcord (actual win)
(13, 'music', 'CMA Award', 'CMA', 'Single of the Year', 2017, TRUE), -- Blue Ain't Your Color (actual win)
(13, 'music', 'ARIA Award', 'ARIA', 'Best Country Album', 2021, FALSE), -- The Speed of Now Part 1 (nomination)
-- Delta Goodrem (person_id: 14)
(14, 'music', 'ARIA Award', 'ARIA', 'Highest Selling Album', 2003, TRUE), -- Innocent Eyes (actual win)
(14, 'music', 'ARIA Award', 'ARIA', 'Best Female Artist', 2003, TRUE), -- (actual win)
(14, 'music', 'Brit Award', 'BPI', 'International Breakthrough Act', 2004, FALSE), -- (nomination)
-- Jessica Mauboy (person_id: 15)
(15, 'music', 'ARIA Award', 'ARIA', 'Highest Selling Single', 2008, TRUE), -- Running Back (actual win)
(15, 'music', 'Deadly Award', 'Deadly Awards', 'Single of the Year', 2009, TRUE), -- (actual win)
(15, 'music', 'National Indigenous Music Award', 'NIMA', 'Artist of the Year', 2014, TRUE), -- (actual win)
-- Iggy Azalea (person_id: 16)
(16, 'music', 'Grammy Award', 'Recording Academy', 'Best Rap Album', 2015, FALSE), -- The New Classic (nomination)
(16, 'music', 'Billboard Music Award', 'Billboard', 'Top Rap Song', 2015, TRUE), -- Fancy (actual win)
(16, 'music', 'MTV EMA', 'MTV', 'Best Hip-Hop', 2014, TRUE), -- (actual win)
-- Troye Sivan (person_id: 17)
(17, 'music', 'ARIA Award', 'ARIA', 'Best Pop Release', 2016, TRUE), -- Blue Neighbourhood (actual win)
(17, 'music', 'GLAAD Media Award', 'GLAAD', 'Outstanding Music Artist', 2016, TRUE), -- (actual win)
(17, 'music', 'MTV EMA', 'MTV', 'Best Worldwide Act', 2015, FALSE), -- (nomination)
-- Kylie Minogue (person_id: 18)
(18, 'music', 'Brit Award', 'BPI', 'Best International Female', 2002, TRUE), -- Fever (actual win)
(18, 'music', 'Grammy Award', 'Recording Academy', 'Best Dance Recording', 2002, FALSE), -- Can't Get You Out (nomination)
(18, 'music', 'ARIA Award', 'ARIA', 'Best Pop Release', 2002, TRUE), -- (actual win)
-- Vance Joy (person_id: 19)
(19, 'music', 'ARIA Award', 'ARIA', 'Breakthrough Artist', 2014, TRUE), -- Riptide (actual win)
(19, 'music', 'APRA Award', 'APRA', 'Song of the Year', 2014, TRUE), -- (actual win)
(19, 'music', 'J Award', 'Triple J', 'Australian Album of the Year', 2014, TRUE), -- Dream Your Life Away (actual win)
-- Tame Impala (person_id: 20)
(20, 'music', 'Grammy Award', 'Recording Academy', 'Best Alternative Music Album', 2016, TRUE), -- Currents (actual win)
(20, 'music', 'ARIA Award', 'ARIA', 'Album of the Year', 2015, TRUE), -- (actual win)
(20, 'music', 'Brit Award', 'BPI', 'International Group', 2016, FALSE), -- (nomination)
-- Briggs (person_id: 21)
(21, 'music', 'ARIA Award', 'ARIA', 'Best Urban Album', 2015, TRUE), -- Sheplife (actual win)
(21, 'music', 'Deadly Award', 'Deadly Awards', 'Album of the Year', 2015, TRUE), -- (actual win)
(21, 'music', 'National Indigenous Music Award', 'NIMA', 'Artist of the Year', 2016, TRUE), -- (actual win)
-- Missy Higgins (person_id: 22)
(22, 'music', 'ARIA Award', 'ARIA', 'Best Pop Release', 2004, TRUE), -- The Sound of White (actual win)
(22, 'music', 'APRA Award', 'APRA', 'Song of the Year', 2005, TRUE), -- Scar (actual win)
(22, 'music', 'J Award', 'Triple J', 'Australian Album of the Year', 2004, TRUE), -- (actual win)
-- Daniel Johns (person_id: 23)
(23, 'music', 'ARIA Award', 'ARIA', 'Album of the Year', 2003, TRUE), -- Diorama (actual win)
(23, 'music', 'ARIA Award', 'ARIA', 'Best Rock Album', 2003, TRUE), -- (actual win)
(23, 'music', 'APRA Award', 'APRA', 'Songwriter of the Year', 2004, TRUE), -- (actual win)
-- Courtney Barnett (person_id: 24)
(24, 'music', 'ARIA Award', 'ARIA', 'Best Female Artist', 2015, TRUE), -- Sometimes I Sit and Think... (actual win)
(24, 'music', 'Grammy Award', 'Recording Academy', 'Best New Artist', 2016, FALSE), -- (nomination)
(24, 'music', 'Brit Award', 'BPI', 'International Female Solo Artist', 2016, FALSE), -- (nomination)
-- Sophie Monk (person_id: 48)
(48, 'music', 'ARIA Award', 'ARIA', 'Highest Selling Single', 2003, TRUE), -- Inside Outside (actual win)
(48, 'music', 'Nickelodeon Kids Choice Award', 'Nickelodeon', 'Favorite Australian Singer', 2004, FALSE), -- (nomination)


-- COMEDY AWARDS DONE
-- Hugh Jackman (person_id: 1) - Comedy awards 
(1, 'comedy', 'Tony Award', 'American Theatre Wing', 'Special Tony Award', 2012, TRUE), -- For hosting excellence
(1, 'comedy', 'Emmy Award', 'Television Academy', 'Outstanding Special Class Program', 2005, FALSE), -- Tony Awards nomination
-- Isla Fisher (person_id: 9) - Comedy awards
(9, 'comedy', 'Australian Comedy Award', 'Melbourne Comedy Festival', 'Best Comedy Performer', 2015, TRUE),
-- Briggs (Adam Briggs) (person_id: 21) - Comedy awards
(21, 'comedy', 'Deadly Award', 'Deadly Awards', 'Comedian of the Year', 2015, TRUE),
(21, 'comedy', 'Helpmann Award', 'Live Performance Australia', 'Best Comedy Performer', 2018, FALSE),
-- Rebel Wilson (person_id: 25) - Comedy awards
(25, 'comedy', 'British Comedy Award', 'British Comedy Awards', 'Best Female Comedy Breakthrough', 2013, TRUE),
-- Paul Hogan (person_id: 26) - Comedy awards
(26, 'comedy', 'Logie Award', 'TV Week', 'Gold Logie', 1986, TRUE), -- For The Paul Hogan Show
-- Hamish Blake (person_id: 27)
(27, 'comedy', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2012, TRUE),
(27, 'comedy', 'ACCTA Award', 'AACTA', 'Best Light Entertainment Program', 2012, TRUE),
-- Andy Lee (person_id: 28)
(28, 'comedy', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2018, TRUE),
(28, 'comedy', 'ACCTA Award', 'AACTA', 'Best Entertainment Program', 2018, TRUE),
-- Celeste Barber (person_id: 29) - Comedy awards not in ACTING
(29, 'comedy', 'Shorty Award', 'Shorty Awards', 'Best Comedian', 2019, TRUE),
(29, 'comedy', 'Streamy Award', 'Streamy Awards', 'Best Comedy Series', 2020, FALSE),
-- Joel Creasey (person_id: 30)
(30, 'comedy', 'GQ Men of the Year', 'GQ Australia', 'Comedian of the Year', 2018, TRUE),
(30, 'comedy', 'WA Comedy Award', 'Fringe World', 'Best Comedy Show', 2014, TRUE),
-- Wil Anderson (person_id: 31)
(31, 'comedy', 'Helpmann Award', 'Live Performance Australia', 'Best Comedy Performer', 2016, TRUE),
(31, 'comedy', 'ARIA Award', 'ARIA', 'Best Comedy Release', 2017, FALSE),
-- Tom Gleeson (person_id: 32)
(32, 'comedy', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2019, TRUE),
(32, 'comedy', 'Gold Logie', 'TV Week', 'Most Popular Personality', 2019, TRUE),
-- Dave Hughes (person_id: 33)
(33, 'comedy', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2006, TRUE),
(33, 'comedy', 'Melbourne Comedy Festival', 'MICF', 'People\'s Choice Award', 2005, TRUE),
-- Shaun Micallef (person_id: 34) - Comedy awards not in ACTING
(34, 'comedy', 'Logie Award', 'TV Week', 'Most Outstanding Comedy Program', 2013, TRUE),
(34, 'comedy', 'AACTA Award', 'AACTA', 'Best Comedy Program', 2014, TRUE),
-- Carrie Bickmore (person_id: 43)
(43, 'comedy', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2015, TRUE),
(43, 'comedy', 'Gold Logie', 'TV Week', 'Most Popular Personality', 2015, TRUE),

-- FASHION AWARDS DONE
-- Nicole Kidman (person_id: 2)
(2, 'fashion', 'Fragrance Foundation Award', 'Fragrance Foundation', 'Celebrity Fragrance of the Year', 2018, TRUE), -- Chanel No.5 (actual win)
(2, 'fashion', 'InStyle Award', 'InStyle Australia', 'Best Beauty Ambassador', 2017, TRUE), -- Chanel partnership (actual win)
-- Samara Weaving (person_id: 7)
(7, 'fashion', 'GQ Australia Award', 'GQ Australia', 'Model of the Year', 2017, FALSE), -- Paper Magazine feature (nomination)
-- Iggy Azalea (person_id: 16)
(16, 'fashion', 'CFDA Fashion Award', 'CFDA', 'Fashion Influencer of the Year', 2018, FALSE), -- Versace collaboration (nomination)
-- Samantha Harris (person_id: 35)
(35, 'fashion', 'Deadly Award', 'Deadly Awards', 'Fashion Designer of the Year', 2014, TRUE), -- David Jones Indigenous collection (actual win)
-- Adut Akech (person_id: 36)
(36, 'fashion', 'Model of the Year', 'Models.com', 'International Model', 2019, TRUE), -- Saint Laurent campaigns (actual win)
(36, 'fashion', 'British Fashion Award', 'BFC', 'Model of the Year', 2019, TRUE), -- Multiple runway appearances (actual win)
-- Gemma Ward (person_id: 37)
(37, 'fashion', 'Vogue Australia Award', 'Vogue Australia', 'Model of the Year', 2006, TRUE), -- Prada runway season (actual win)
-- Elle Macpherson (person_id: 38)
(38, 'fashion', 'Fifi Award', 'Fragrance Foundation', 'Best Celebrity Fragrance', 2005, TRUE), -- Elle Macpherson Intimates (actual win)
(38, 'fashion', 'GQ Woman of the Year', 'GQ', 'Entrepreneur', 2004, TRUE), -- For launching intimates line (actual win)
-- Miranda Kerr (person_id: 39)
(39, 'fashion', 'Victoria\'s Secret Angel of the Year', 'Victoria\'s Secret', 'Runway Performance', 2012, TRUE), -- VS Fashion Show (actual win)
(39, 'fashion', 'Glamour Award', 'Glamour Magazine', 'Model of the Year', 2011, TRUE), -- VS/KORA Organics (actual win)
-- Abbey Lee (person_id: 40)
(40, 'fashion', 'GQ Australia Award', 'GQ Australia', 'Model of the Year', 2016, TRUE), -- Gucci campaigns (actual win)
-- Jordan Barrett (person_id: 41)
(41, 'fashion', 'GQ Men of the Year', 'GQ Australia', 'Model of the Year', 2018, TRUE), -- Outland Denim campaign (actual win)
-- Sophie Monk (person_id: 48)
(48, 'fashion', 'Logie Award', 'TV Week', 'Most Popular New Talent', 2015, FALSE), -- Myer ambassador role (nomination)

-- BROADCASTING AWARDS DONE
-- Briggs (Adam Briggs) (person_id: 21)
(21,'broadcasting', 'Deadly Award', 'Deadly Awards', 'Broadcaster of the Year', 2018, TRUE), -- ABC News Breakfast (actual win)
(21,'broadcasting', 'NIMA Award', 'National Indigenous Music Awards', 'Media Personality', 2020, FALSE), -- The Set (nomination)
-- Hamish Blake (person_id: 27)
(27,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2012, TRUE), -- Hamish & Andy (actual win)
(27,'broadcasting', 'ACMA Award', 'Australian Commercial Media Awards', 'Best Radio Show', 2009, TRUE), -- Hamish & Andy (actual win)
-- Andy Lee (person_id: 28)
(28,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2020, TRUE), -- LEGO Masters Australia (actual win)
(28,'broadcasting', 'ACMA Award', 'Australian Commercial Media Awards', 'Best Radio Show', 2009, TRUE), -- Hamish & Andy (actual win)
-- Celeste Barber (person_id: 29)
(29,'broadcasting', 'Shorty Award', 'Shorty Awards', 'Best in Comedy', 2021, TRUE), -- Fine, Thanks (actual win)
(29,'broadcasting', 'AACTA Award', 'AACTA', 'Best Online Entertainment', 2022, FALSE), -- Fine, Thanks (nomination)
-- Joel Creasey (person_id: 30)
(30,'broadcasting', 'GQ Award', 'GQ Australia', 'TV Personality of the Year', 2019, TRUE), -- Eurovision (actual win)
(30,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular New Talent', 2016, FALSE), -- The Project (nomination)
-- Wil Anderson (person_id: 31)
(31,'broadcasting', 'Logie Award', 'TV Week', 'Most Outstanding Comedy Program', 2010, TRUE), -- Gruen (actual win)
(31,'broadcasting', 'Australian Podcast Award', 'Audio Production Awards', 'Best Comedy Podcast', 2018, TRUE), -- Wilosophy (actual win)
-- Tom Gleeson (person_id: 32)
(32,'broadcasting', 'Logie Award', 'TV Week', 'Gold Logie', 2019, TRUE), -- Hard Quiz (actual win)
(32,'broadcasting', 'Logie Award', 'TV Week', 'Most Outstanding Entertainment Program', 2020, TRUE), -- Hard Quiz (actual win)
-- Dave Hughes (person_id: 33)
(33,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular Comedy Program', 2019, TRUE), -- Hughesy, We Have a Problem (actual win)
(33,'broadcasting', 'ACMA Award', 'Australian Commercial Media Awards', 'Best Radio Personality', 2011, TRUE), -- The Hughesy Show (actual win)
-- Shaun Micallef (person_id: 34)
(34,'broadcasting', 'Logie Award', 'TV Week', 'Most Outstanding Comedy Program', 2014, TRUE), -- Mad As Hell (actual win)
(34,'broadcasting', 'AACTA Award', 'AACTA', 'Best Comedy Program', 2014, TRUE), -- Mad As Hell (actual win)
-- Elle Macpherson (person_id: 38)
(38,'broadcasting', 'TV Choice Award', 'TV Choice Magazine', 'Best Reality Judge', 2014, FALSE), -- Britain & Ireland's Next Top Model (nomination)
-- Osher Günsberg (person_id: 42)
(42,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2019, TRUE), -- The Bachelor Australia (actual win)
(42,'broadcasting', 'ASTRA Award', 'ASTRA Awards', 'Favourite Male Personality', 2014, TRUE), -- Australian Idol (actual win)
-- Carrie Bickmore (person_id: 43)
(43,'broadcasting', 'Logie Award', 'TV Week', 'Gold Logie', 2015, TRUE), -- The Project (actual win)
(43,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2012, TRUE), -- The Project (actual win)
-- Waleed Aly (person_id: 44)
(44,'broadcasting', 'Logie Award', 'TV Week', 'Gold Logie', 2016, TRUE), -- The Project (actual win)
(44,'broadcasting', 'Walkley Award', 'Walkley Foundation', 'Interview of the Year', 2016, TRUE), -- The Project (actual win)
-- Lisa Wilkinson (person_id: 45)
(45,'broadcasting', 'Logie Award', 'TV Week', 'Gold Logie', 2017, FALSE), -- The Project (nomination)
(45,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular Presenter', 2008, TRUE), -- The Today Show (actual win)
-- Peter Overton (person_id: 46)
(46,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular News Presenter', 2015, TRUE), -- Nine News Sydney (actual win)
(46,'broadcasting', 'Kennedy Award', 'Kennedy Foundation', 'Journalism Excellence', 2017, TRUE), -- Nine News Sydney (actual win)
-- Leigh Sales (person_id: 47)
(47,'broadcasting', 'Walkley Award', 'Walkley Foundation', 'Broadcast Interview', 2013, TRUE), -- 7.30 (actual win)
(47,'broadcasting', 'Logie Award', 'TV Week', 'Most Outstanding News Coverage', 2014, TRUE), -- 7.30 (actual win)
-- Sophie Monk (person_id: 48)
(48,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular New Talent', 2018, TRUE), -- Love Island Australia (actual win)
(48,'broadcasting', 'TV Tonight Award', 'TV Tonight', 'Best Reality Host', 2018, FALSE), -- The Bachelorette Australia (nomination)
-- Erin Molan (person_id: 49)
(49,'broadcasting', 'Kennedy Award', 'Kennedy Foundation', 'Sports Journalism', 2017, TRUE), -- NRL Footy Show (actual win)
(49,'broadcasting', 'ACMA Award', 'Australian Commercial Media Awards', 'Best Sports Coverage', 2018, TRUE), -- 2GB Continuous Call Team (actual win)
-- Jessica Rowe (person_id: 50)
(50,'broadcasting', 'Logie Award', 'TV Week', 'Most Popular New Female Talent', 2007, TRUE), -- The Morning Show (actual win)
(50,'broadcasting', 'Antenna Award', 'Free TV Australia', 'Best Daytime Presenter', 2015, TRUE); -- Studio 10 (actual win)TRUE),

