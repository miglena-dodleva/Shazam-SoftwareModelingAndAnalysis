CREATE DATABASE ShazamDb;
USE ShazamDb;

CREATE TABLE Users(
   user_id INT NOT NULL PRIMARY KEY,
   country_id INT NOT NULL FOREIGN KEY REFERENCES Country(country_id),
   username VARCHAR(30) NOT NULL,
   password VARCHAR(30) NOT NULL,
   age TINYINT NOT NULL,
   shazams_count INT NOT NULL

);

CREATE TABLE Country(
    country_id INT NOT NULL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	continent VARCHAR(30) NOT NULL
);

CREATE TABLE Music_genre(
    music_genre_id INT NOT NULL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE Artist(
    artist_id INT NOT NULL PRIMARY KEY,
	music_genre_id INT NOT NULL FOREIGN KEY REFERENCES Music_genre(music_genre_id),
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	birthday DATETIME NOT NULL

);

CREATE TABLE Song(
    song_id INT NOT NULL PRIMARY KEY,
	artist_id INT NOT NULL FOREIGN KEY REFERENCES Artist(artist_id),
	title VARCHAR(30) NOT NULL,
	album_name VARCHAR(30) NOT NULL,
	duration SMALLINT NOT NULL,
	lyrics TEXT NOT NULL,
	release_year DATETIME NOT NULL,
	shazams_count INT NOT NULL

);

CREATE TABLE PlayList(
    playlist_id INT NOT NULL PRIMARY KEY,
	user_id INT NOT NULL FOREIGN KEY REFERENCES Users(user_id),
	title VARCHAR(30) NOT NULL,
	song_count INT NOT NULL

);

CREATE TABLE SongToPlayList(
   song_to_playlist_id INT NOT NULL PRIMARY KEY,
   song_id INT FOREIGN KEY REFERENCES Song(song_id ) NOT NULL,
   playlist_id INT FOREIGN KEY REFERENCES PlayList (playlist_id) NOT NULL
);


insert into Country (country_id, name, continent) values (1, 'Portugal', 'Europe');
insert into Country (country_id, name, continent) values (2, 'Bulgaria', 'Europe');
insert into Country (country_id, name, continent) values (3, 'France', 'Europe');
insert into Country (country_id, name, continent) values (4, 'Italy', 'Europe');
insert into Country (country_id, name, continent) values (5, 'Canada', 'North America');
insert into Country (country_id, name, continent) values (6, 'United States of America', 'North America');
insert into Country (country_id, name, continent) values (7, 'Dominican Republic', 'North America');
insert into Country (country_id, name, continent) values (8, 'Cuba', 'North America');
insert into Country (country_id, name, continent) values (9, 'Mexico', 'North America');
insert into Country (country_id, name, continent) values (10, 'Thailand', 'Asia');
insert into Country (country_id, name, continent) values (11, 'China', 'Asia');
insert into Country (country_id, name, continent) values (12, 'Brazil', 'South America');
insert into Country (country_id, name, continent) values (13, 'Sweden', 'Europe');
insert into Country (country_id, name, continent) values (14, 'Poland', 'Europe');
insert into Country (country_id, name, continent) values (15, 'Bangladesh', 'Asia');
insert into Country (country_id, name, continent) values (16, 'Ukraine', 'Europe');
insert into Country (country_id, name, continent) values (17, 'Philippines', 'Asia');
insert into Country (country_id, name, continent) values (18, 'Cameroon', 'Africa');
insert into Country (country_id, name, continent) values (19, 'Nigeria', 'Africa');
insert into Country (country_id, name, continent) values (20, 'Morocco', 'Africa');
insert into Country (country_id, name, continent) values (21, 'South Africa', 'Africa');
insert into Country (country_id, name, continent) values (22, 'Egypt', 'Africa');
insert into Country (country_id, name, continent) values (23, 'Peru', 'South America');
insert into Country (country_id, name, continent) values (24, 'Colombia', 'South America');
insert into Country (country_id, name, continent) values (25, 'Argentina', 'South America');
insert into Country (country_id, name, continent) values (26, 'Venezuela', 'South America');
insert into Country (country_id, name, continent) values (27, 'Greece', 'Europe');
insert into Country (country_id, name, continent) values (29, 'Japan', 'Asia');
insert into Country (country_id, name, continent) values (30, 'India', 'Asia');
insert into Country (country_id, name, continent) values (31, 'Pakistan', 'Asia');
insert into Country (country_id, name, continent) values (32, 'Cyprus', 'Europe');



insert into Music_genre (music_genre_id, name) values (1, 'Pop');
insert into Music_genre (music_genre_id, name) values (2, 'Hip hop');
insert into Music_genre (music_genre_id, name) values (3, 'Rock');
insert into Music_genre (music_genre_id, name) values (4, 'Reggae');
insert into Music_genre (music_genre_id, name) values (5, 'Country');
insert into Music_genre (music_genre_id, name) values (6, 'Music of Latin America');
insert into Music_genre (music_genre_id, name) values (7, 'Jazz');
insert into Music_genre (music_genre_id, name) values (8, 'Electronic');
insert into Music_genre (music_genre_id, name) values (9, 'Folk');
insert into Music_genre (music_genre_id, name) values (10, 'Funk');



insert into Users (user_id, country_id, username, password, age, shazams_count) values (1, 1, 'jkesteven0', 'vvF0oi6L', 20, 200);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (2, 2, 'shassett1', 'VNLYFNtfr', 22, 350);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (3, 3, 'ksprankling2', 'EaY5xQGu', 30, 30);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (4, 20, 'crooze3', 'XggMyUi', 16, 40);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (5, 11, 'ebartoszek4', '1mWpKmX71DIC', 15, 50);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (6, 14, 'dearngy5', 'Ll4n9I0RA3lK', 16, 60);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (7, 1, 'gtruwert6', 'Uo8IeuHWeB', 17, 200);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (8, 22, 'amcnea7', '0P3cZ8kQY10H', 18, 60);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (9, 21, 'aforsdyke8', 'YLgIiTXI2c', 19, 60);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (10, 3, 'nplaister9', '3Ru3DYzu', 19, 110);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (11, 7, 'jgibbinsa', '4O5NZx9E', 17, 110);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (12, 11, 'elabdenb', '224i6VON34', 22, 120);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (13, 7, 'pfiermanc', 'GAPI0zC5D4', 23, 250);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (14, 1, 'bwehdend', 'Z9gOMk', 24, 15);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (15, 3, 'jkinnette', '2poIwQsdDr', 25, 15);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (16, 11, 'psherbornf', 'r0K0x2', 26, 26);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (17, 11, 'bkirkbrightg', 'eYjzcLp8ahHt', 17, 17);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (18, 3, 'gfoucarh', 'SxNyxH0n1', 18, 28);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (19, 2, 'ldunstani', 'I3yvCqgcMN', 19, 350);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (20, 2, 'bwankelj', 'KrwOvQUV', 20, 20);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (21, 5, 'bmatick', 'zhAkrU7gfrB2', 21, 21);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (22, 25, 'jpirriel', 'ZIQCuM', 22, 22);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (23, 25, 'olammerichm', 'lyXb5hEMs', 33, 60);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (24, 12, 'cmaccoston', 'ZxVVNw', 34, 24);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (25, 4, 'coxenfordo', 'mw8pynW4tC', 35, 130);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (26, 2, 'ttighep', 'nxCmKJ8', 26, 200);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (27, 29, 'hleighfieldq', 'PxuR4fKbClLe', 27, 27);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (28, 6, 'pdawksr', 'TI9P26Y1B4', 30, 28);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (29, 4, 'jchurchmans', 'oP8On03uf99', 29, 29);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (30, 12, 'bgoneaut', 'eT7bNOkALL', 30, 30);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (31, 2, 'mwheeltonu', '72VWgE3n', 31, 60);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (32, 4, 'eolyhanev', 'IY7V7u', 22, 170);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (33, 25, 'locodihiew', 'AexQ3VPZM', 33, 200);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (34, 29, 'tvaughtonx', 'P1vFxG', 24, 130);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (35, 29, 'fburgoty', 'EvHGLyZBA', 25, 135);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (36, 2, 'thoviez', 'C4wAEob', 36, 236);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (37, 5, 'mwaterhous10', 'lX1vNe', 32, 190);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (38, 6, 'cboothman11', 'LCA7jgH2H', 32, 138);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (39, 4, 'mchilton12', 'GdMxT6kwHpf', 19, 38);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (40, 12, 'ltomaszynski13', 'Qkhuti', 20, 140);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (41, 4, 'lduesberry14', 'CqnbAIFEDR', 21, 141);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (42, 5, 'lblackhurst15', 'B1pMVpjCkk5', 22, 92);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (43, 6, 'fwitherby16', 'YFH19kFoxdG', 23, 143);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (44, 4, 'lleithharvey17', 'h6yzBo5', 24, 140);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (45, 8, 'ehugnot18', 'j26WUSKVOXJZ', 15, 105);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (46, 6, 'eedy19', 's3VTziAQm', 16, 46);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (47, 8, 'vacott1a', 'EImVVuqs', 17, 77);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (48, 6, 'hdequincey1b', 'BvPSjOD8EdK', 28, 268);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (49, 5, 'dshawl1c', 'E8zRNdGBBJ6', 19, 49);
insert into Users (user_id, country_id, username, password, age, shazams_count) values (50, 6, 'lmowsley1d', 'J4HPKMf3dH', 20, 150);



insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (1, 2, '50 Cent', 'James', '6/6/1975');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (2, 2, 'Eminem', ' Bruce', '10/17/1972');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (3, 1, 'Beyoncé', 'Knowles-Carter', '9/4/1981');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (4, 2, 'Tupac', 'Shakur', '6/16/1971');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (5, 1, 'Britney', 'Spears', '12/2/1981');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (6, 1, 'Ariana', 'Grande', '6/26/1993');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (7, 1, 'Justin', 'Timberlake', '1/31/1981');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (8, 2, 'Drake', 'Graham', '10/24/1986');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (9, 4, 'Bob', 'Marley', '2/6/1945');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (10, 6, 'Shakira', 'Ripoll', '2/2/1977');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (11, 1, 'Rihanna', 'Fenty', '2/20/1988');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (12, 6, 'Selena', 'Quintanilla', '4/6/1971');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (13, 6, 'Becky', 'G', '3/2/1997');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (14, 6, 'Enrique', 'Iglesias', '5/8/1975');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (15, 7, 'Louis', 'Armstrong', '8/4/1901');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (16, 7, 'Ella', 'Fitzgerald', '4/19/1917');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (17, 8, 'David', 'Guetta', '7/11/1967');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (18, 8, 'Calvin', 'Harris', '1/17/1984');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (19, 10, 'Prince', 'Nelson', '6/7/1958');
insert into Artist (artist_id, music_genre_id, first_name, last_name, birthday) values (20, 10, 'James', 'Brown', '5/3/1933');


insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (1, 1, 'In da Club', 'Get Rich or Die Tryin', 4, ' your birthday
We gon party like its your birthday
We gon sip Bacardi like its your birthday
And you know we dont give a fuck its not your birthday
You can find me in the club, bottle full of bub
Look, mami, I got the X, if you into takin drugs
Im into havin sex, I aint into makin love
So come give me a hug, if you into getting rubbed
You can find me in the club, bottle full of bub
Look, mami, I got the X, if you into takin drugs
Im into havin sex, I aint into makin love
So come give me a hug, if you into getting rubbed
When I pull out up front, you see the Benz on dubs
When I roll 20 deep, its 20 knives in the club
Niggas heard I fuck with Dre, now they wanna show me love
When you sell like Eminem, and the hoes they wanna fuck
But, homie, aint nothing change hoes down, Gs up
I see Xzibit in the cut, that nigga roll that weed up
If you watch how I move, you will mistake me for a playa or pimp
Been hit wit a few shells, but I dont walk wit a limp 
In the hood, in L.A., they saying "50 you hot"
They like me, I want them to love me like they love Pac
But holla, in New York them niggas will tell ya Im loco
And the plan is to put the rap game in a chokehold
Im full of focused man, my money on my mind
I got a mill out the deal and I still on the grind
Now shorty said she feeling my style, she feeling my flow
Her girlfriend wanna get bi and they ready to go
You can find me in the club, bottle full of bub
Look, mami, I got the X, if you into takin drugs
love
So come give me a hug, if you into getting rubbed
My flow, my show brought me the dough
That bought me all my fancy things
My crib, my cars, my clothes, my jewels
Look, nigga, I done came up and  I thought that youd be happy I made it
I am that cat by the bar toasting to the good life
You that faggot ass nigga trying to pull me back, right?
When my jaws get to bumpin in the club its on
I wink my eye at you, bitch, if she smiles she gone
If the roof on fire, let the motherfucker burn
If the talk ainbout money, homie,
You can find me in the club, bottle full of bub drugs, I aint into makin love
So come give me a hug, if you into getting rubbed
Dont try to act like you dont know where we be neither, nigga
We in the club all the time, nigga, so pop, pop off, nigga
G-Unit', 2003, 90);

insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (2, 1, 'Just A Lil Bit', 'The Massacre', 3, 'Yeah, Shady, Aftermath, G-Unit!
Damn baby all I need is a lil bit
A lilbit of this, a lilbit of that
Get it crackin in the club when you hear the shit
Drop it like itthat back
Girl, shake that thing, yeah, work that thing
Let me see it go up and down
Rotate that thing, I wanna touch that thing
When you make it go 
G-Unit in the house, yeah, that im young, but a nigga from the old school
On the dancefloor a nigga doinold moves
I dont give a fuck, I do what I wan do
I hit your ass up boy, I done warned you
Better listen when I talk nigga, dont trip
Yo heat in the car, mines in this bitch
I ain to beef, I to get my drink on
And my diamonds, my fitted, and my mink on
Ima kick it at the bar  time to go
Then Ima get in shorty ear and I ma let her know
All a nigga really need is a lil bit
Not a lot baby girl, just a lil bit
We can head to the crib in a lil bit
I can show you how I live in a lil bit
I wanna unbutton your pants just a lil bit
Take em down just a lil bit
Get to kissin and touchin a lil bit
Get to lickin it, a lil bit
This is 50, comin out your ster-e-o
Its hard to tell though cause I switched the flow
Eyes a little low 
My neck, my wrist, my ears is froze
Come get, your bitch, she on me dawg
She must, ta heard, about the dough
Not Captain  off the chain
Number one on the chart all the time mane
When the kid in the house, I turn it out
Keep the dancefloor packed thats without a doubt
But shorty shake that thang like a pro, man
She backed it up on me Im like, "Oh man"
I got close enough to her so I know she could hear
System thumpin, party jumpin, I said loud and clear
All a nigga really need is a lil bit
Not a lot baby girl, just a lil bit
We can head to the crib in a lil bit
I can show you how I live in a lil  bit
I wanna unbutton your pants just a lil bit
Take em off and pull em down just a lil bit
Get to kissin and touchin a lil bit
Get to lickin it, a lil bit
Baby, you got me feelin  right, you heard me?
My momma gone you can spend the night, you heard me?
I aint playin Im tryin to fuck tonight, you heard me?
Clothes off, face down, ass up, cmon, ha-ha
All a nigga really need is a lil bit
Not a lot baby girl, just a lil bit
We can head to the crib in a lil bit
I can show you how I live in a lil bit
I wanna unbutton your pants just a lil bit
Take em off and pull em down just a lil bit
Get to kissin and touchin a lil bit
Get to lickin it, a lil bit', 2005, 120);





insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (3, 2, 'Superman', 'The Eminem Show', 4, 'Mhmm
You high baby?
Yeah
Yeah? (Hahaha)
Talk to me
You want me to tell you somethin?
Uh-huh
I know what you wanna hear
Cause I know you want me, baby
I think I want you too
(I think I love you, baby)
I think I love you too
Im here to save you girl
Come be in Shadys world
I wanna grow together
Lets let our love unfurl
You know you want me, baby
You know I want you too
They call me Superman
Im here to rescue you
I wanna save you, girl
Come be in Shad
Puss blew out, poppin shit
Wouldnt piss on fire to put you out
Am I too nice? Buy you ice?
Bitch, if you died, wouldnt buy you life
What you tryin to be, my new wife?
What you Mariah? Fly through twice
But I do know one thing though
Bitches they come, they go
Saturday through Sunday, Monday
Monday through Sunday, yo
Maybe Ill love you one day
Maybe well someday grow
Til then just sit your drunk ass
On that fuckin runway, hoe
Cause I cant be your Superman
Cant be your Superman
Cant be your Superman
Its no secret everybody knows
Yeah, we fucked, bitch, so what?
Thats about as far as your buddy goes
We will see how much you willl be partying then
You dont want that, neither do I
I dont wanna flip when I see you with guys
Too much pride between you and I
Not a jealous man, but females lie
But I guess thats just what sluts do
How could it ever be just us two?
I never loved you enough to trust you
We just met and I just fucked you
But I do know one thing though
Bitches they come they go
Saturday through Sunday, Monday
Monday through Sunday, yo
Maybe I will love you one day
Maybe well someday grow
Til then just sit your drunk ass
On that fuckin runway, hoe
I know you want me, baby
I think I want you too
(I think I love you, baby)
I think I love you too
I m here to save you girl
Come be in Shadys world
I wanna grow together
Lets let our love unfurl
You know you want me, baby
You know I want you too
They call me Superman
Im here to rescue you
I wanna save you girl
Come be in Shady world
(Ooh boy, you drive me crazy)
Bitch, you make me hurl
First thing you said
Im not fazed
I hang around big stars all day
I dont see what the big deal is anyway
You are just plain ol Marshall to me
Ooh yeah, girl, run that game
Hailie Jade? I love that name
Love that tattoo, whats that say?
Rot In Pieces?
Uh, thats great', 2002, 150);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (4, 3, 'Crazy in Love', 'Dangerously in Love', 5, 'Yes (whoo, ow)
Its so crazy right now
Most incredibly, 
Its ya boy, Young
You ready?
Uh oh, uh oh, uh oh, oh, no, no (ow)
Uh oh, uh oh, uh oh, oh, no, no
Uh oh, uh oh, uh oh, oh, no, no
Uh oh, uh oh, uh oh, oh, no, no (yeah)
History in the making
Part two, its so crazy right now
I look and stare so deep in your eyes
I touch on you more and more every time
When you leave, Im begging you not to go
Call your name two, three times in a row
Such a funny thing for me to try to explain
How Im feeling and my pride is the one to blame
(Yeah, yeah) cause I know I don understand
Just how your love can do what no one else can
Got me looking so crazy right now, your loves
Got me looking so crazy right now 
Got me looking so crazy right now, your touch
Got me looking so crazy right now (your touch)
Got me hoping youll page me right now, your kiss
Got me hoping you will save me right now
Looking so crazy, your loves
Got me looking, got me looking so crazy in love
Uh oh, uh oh, uh oh, oh, no, no
Uh oh, uh oh, uh oh, oh, no, no
Uh oh, uh oh, uh oh, oh, no, no
Uh oh, uh oh, uh oh, oh, no, no
When I talk to my friends so quietly
Who he think he is? Look at what you did to me
But I still dont understand
Just how your love can do what no one else can
Got me looking so crazy right now, your love is
Got me looking so crazy right now (so crazy)
Got me looking so crazy right now, your touch (your love)
Got me looking so crazy right now (love)
Got me hoping youll page me right now, your kiss (hey)
Got me hoping youll save me right now (hey)
Looking so crazy, your loves (hey)
Got me looking, got me looking so crazy in love
Im looking so crazy in love is
Got me looking, got me looking so crazy in love ', 2003, 140);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (5, 3, 'Halo', ' I Am... Sasha Fierce', 4, 'Remember those walls I built?
Well, baby, theyre tumbling down
And they didnt even put up a fight
They didnt even make a sound
I found a way to let you in
But I never really had a doubt
Standinin the light of your halo
I got my angel now
Itve been awakened
Every rule I had you breakin
Its the risk that Im takin
I aint never gonna shut you out
Everywhere now
Im surrounded by your embrace
Baby, I can see your halo
You know youre my saving grace
Youre everything I need and more
Its written all over your face
Baby, I can feel your halo
Pray it won fade away
I can feel your halo (halo), halo
I can see your halo (halo), halo
I can feel your halo (halo), halo
I can see your halo (halo), halo
Hit me like a ray of sun
Burning through my darkest night
You are the only one that I want
Think 
But this dont even feel like fallin
Gravity cant begin
To pull me back to the ground again', 2008, 50);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (6, 4, 'All Eyez on Me', 'All Eyez on Me', 6, 'Hank, Beugard, Big Sur
Yall know how this - go, you know
All eyes on me, OG
Roll up in the club and shit (is that right?)
All eyes on me
All eyes on me
Ay you know what?
I bet you got it twisted, you dont know who to trust
So many player-hatin - tryna sound like us
Say they ready for the funk, but I dont think they knowin
Straight to the depths of Hell is where them cowards goin
Well, are you still down? Holla when you see me
And let these devils be sorry for the day they finally freed me
I got a caravan of - every time we ride
Hittin- up when we pass by
Until I die, live the life of a boss player, cause even when Im high
F- with me and get crossed later, the futures in my eyes
Cause all I want is cash and thangs
A five-double-oh Benz, flauntin flashy rings
Uhh, - pursue me like a dream
Been known to disappear before your eyes just like a dope fiend
It seems, my main thing was to be major paid
The game sharper than a - razor blade
Say money bring - bring lies
One - gettin jealous and - die
Depend on me like the first and fifteenth
They might hold me for a second, but these punks wont get me
We got four niggas in low riders and ski masks
Screamin, Thug Life every time they pass, all eyes on me', 1996, 106);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (7, 6, 'Thank U, Next', 'Thank U, Next', 4, 'Thought Id end up with Sean
But he wasnt a match
Wrote some songs about Ricky
Now I listen and laugh
Even almost got married
And for Pete, Im so thankful
Wish I could say "thank you" to Malcolm
Cause he was an angel
One taught me love
One taught me patience
And one taught me pain
Now, Im so amazing
Say Ive loved and Ive lost
But thats not what I see
So, look what I got
Look at what you taught me
And for that, I say
Thank you, next (next)
Thank you, next (next)
Thank you, next
Im so grateful for my ex
Thank you, next (next)
Thank you, next (next)
Thank you, next (next)
Im so
Spend more time with my friends
I aint worried 
Plus, I met someone else
Were havin better discussions
I know they say I move on too fast
But this one gon last
Cause her name is Ari
And Im so good with that (so good with that)
She taught me love (love)
She taught me patience (patience)
She handles pain (pain)
That amazing (yeah, she amazing)
Ive loved and Ive lost (yeah, yeah)
But thats not what I see (yeah, yeah)
Cause look what Ive found (yeah, yeah)
Aint no need for searching
And for that, I say
Thank you, next (thank you, next)
Thank you, next (thank you, next)
Thank you, next (thank you)', 2019, 70);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (8, 6, '7 Rings', 'Thank U, Next', 4, 'Yeah, breakfast at Tiffanys and bottles of bubbles
Girls with tattoos who like getting in trouble
Lashes and diamonds, ATM machines
Buy myself all of my favorite things (yeah)
Been through some bad shit, I should be a sad bitch
Who woulda thought itd turn me to a savage?
Rather be tied up with calls and not strings
Write my own checks like I write what I sing, yeah (yeah)
My wrist, stop watchin, my neck is flossy
Make big deposits, my gloss is poppin
You like my hair? Gee, thanks, just bought it
I see it, I like it, I want it, I got it (yeah)
I want it, I got it, I want it, I got it
I want it, I got it, I want it, I got it
You like my hair? Gee, thanks, just bought it
I see it, I like it, I want it, I got it (yeah)
Wearing a ring, but aint gon be no "Mrs."
Bought matching diamonds for six of my bitches
Id rather spoil all my friends with my riches
Think retail therapy my new addiction
Whoever said money cant solve your problems
Must not have had enough money to solve 
Happiness is the same price as red bottoms
', 2019, 108);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (9, 7, 'SexyBack', 'LoveSounds', 5, 'Im bringin sexy back (yeah)
Them other boys dont know how to act (yeah)
I think its special, what behind your back (yeah)
So turn around and I pick up the slack (yeah)
Take em to the bridge (thats it)
Dirty babe (uh-huh)
You see these shackles baby, Im your slave (uh-huh)
Ill let you whip me, if I misbehave (uh-huh)
Its just that no one makes me feel this way (uh-huh)
Take m to the chorus
Come here girl (go head be gone with it)
Come to the back (go head be gone with it)
VIP (go head be gone with it)
Drinks on me (go head be gone with it)
Let me see what yoe twerking with (go head be gone with it)
Look at those hips (go ead be gone with it)
You make me smile (go  know how to act (yeah)
Come let me make up for the things you lack (yeah)
Cause youre burning up, I gotta get it fast (yeah)
Take em to the bridge (thats it)
Dirty babe (uh-huh)
You see these shackles baby, Im your slave (uh-huh)
Ill let you whip me, if I misbehave (uh-huh)
Its just that no one makes me feel this way (uh-huh)
Take em to the chorus', 2006, 100);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (10, 11, 'La La La', 'Shakira', 4, '̗̺͖̹̯͓Lala-la-la-la
Lala-la, la-la-la-la (Adentro)
Leggo
Leggo
Leggo
Leg
Toda mi vida fue así
Tanto te busqué hasta que llegaste
Con esa boca que Dios te ha da
Las ganas de ti me devoran
Los segundos de todas las horas
Tus dos luceros es to lo que quiero
Sin tus ojos azules, me muero
Ven y bésame mucho
El mundo no importa
La noche comienza
No, no, no pares ahora
La-la-lala, lala-la-la-la
Lala-la-lala-la-la (Porque yo siempre te llevo)
(La-la-la) Lala-la, la
Lala-la-la-la
Lala-la, la-la-la-la (Adentro)
Leggo
Leggo
De tolo que existe, llano y profundo
Lo que más quiero en este mundo
Es estar a tu lado, noche y día
Es así como viviría
Las ganas de ti me devoran
Los segundos de todas las horas
Tus dos luceros es tolo que quiero
Sin tus ojos azules, me muero
Si de veras me quieres
Como yo te quiero
Ven, bésame ahora
Y bésame luego
La-la-lala, lala-la-la-la
Lala-la-lala-la-la (Porque yo siempre te llevo)
(La-la-la) Lala-la, la
Lala-la-la-la
Lala-la, la-la-la-la (Adentro)
Ven y bésame mucho
El mundo no importa
La noche comienza
No pares ahora, ahora, ahora
(Olá-olá, olá-olá, olá-olá)', 2014, 210);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (11, 11, 'Waka Waka', 'Sale el Sol', 5, 'Tipe, tipe, zangalewa (World Cup! World Cup!)
Tipe, tipe, zangalewa (World Cup! World Cup!)
Tipe, tipe, zangalewa (World Cup! World Cup!)
Tipe, tipe, zangalewa (World Cup! World Cup!)
Youre on the frontline, everyone watching
You know its serious, we are getting closer, this isnt over
The pressures on, you feel it
But you got it all, believe it
When you fall get up, oh, oh
And if you fall get up, eh, eh
Tsamina mina zangalewa cause this is Africa
Tsamina mina, eh, eh
Waka waka, eh, eh
Tsamina mina zangalewa
This time for Africa
Listen to your God, this is our motto
Your time to shine, I feel it
You paved the way, believe it
If you get down get up, oh, oh
When you get down get up, eh, eh
Tsamina mina zangalewa
This time for Africa
Tsamina mina, eh, eh
Waka waka, eh, eh
Tsamina mina zangalewa, anawa-a-a
Tsamina mina, eh, eh
Waka waka, eh, eh
Tsamina mina zangalewa
This time for Africa
Abuyile amajoni pikipiki mama, one A up to Z
Bathi susa lamajoni pikipiki mama from East to West
Bathi waka waka mah eh, eh
Waka waka mah eh, eh
Zonk cause this is Africa (Africa, Africa...)
Tsamina mina, anawa-a-a
Tsamina mina
Tsamina mina, anawa-a-a', 2010, 11);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (13, 17, 'Hey Mama', 'Listen', 6, 'Be my woman, girl, Imma
Be your man
Be my woman, girl, I will
Be your man
Yes I be your woman
Yes I be your baby
Yes I be whatever that you tell me when you ready
Yes I be your girl, forever your lady
You aint never gotta worry, Im down for you baby
Best believe that when you need that
Ill be on deck keep it in check
When you need that drum like dum di di dey
I love the dirty rhythm you play
I wanna hear you calling my name
Like hey mama mama hey mama mama (Hey)
Banging the drum like dum di di dey
I know you want it in the worst way
I wanna hear you calling my name
Like hey mama mama hey mama mama (Hey)
Be my woman, girl, Imma
Be your man
Be my woman, girl, Ill
Be your man
Yes I do the cooking
Yes I do the cleaning
Yes I keep the nana real sweet for your eating
Yes you be the boss yes I be respecting
Whatever that you tell me s game you be spitting
Best believe that when you need that
Ill provide that you will always have it
Ill be on deck keep it in check
When you need that Imma let you have it
You beatin my drum like dum di di dey
I love the dirty rhythm you play
I wanna hear you calling my name
Like hey mama mama hey mama mama (Hey)
Banging the drum like dum di di dey
I know you want it in the worst way
I wanna hear you calling my name
Like hey mama mama hey mama mama (Hey)', 2014, 130);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (14, 17, 'Memories', 'One Love', 5, 'All the crazy shit I did tonight
Those will be the best memories
I just wanna let it go for the night
That would be the best therapy for me
All the crazy shit I did tonight
Those will be the best memories
I just wanna let it go for the night
That would be the best therapy for me
Hey, hey, yeah, yeah
Hey, hey, yeah, yeah
Hey, hey, yeah, yeah
Hey, hey, yeah, yeah, Yeah
All the crazy shit I did tonight
Those will be the best memories
I just wanna let it go for the night
That would be the best therapy for me
All the crazy shit I did tonight
Those will be the best memories
I just wanna let it go for the night
That would be the best therapy for me
Hey, hey, yeah, yeah
Hey, hey, yeah, yeah
Hey, hey, yeah, yeah
Hey, hey, yeah, yeah
Itlate but I dont mind', 2010, 40);
insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (15, 18, 'How Deep Is Your Love', 'How Deep Is Your Love', 5, 'I want you to breathe me in
Let me be your air
Let me roam your body freely
No inhibition, no fear
How deep is your love?
Is it like the ocean?
What devotion are you?
How deep is your love?
Is it like nirvana?
Hit me harder again
How deep is your love?
How deep is your love?
How deep is your love?
Is it like the ocean?
Pull me closer again
How deep is your love?
How deep is your love?
Open up my eyes and
Tell me who I am
Let me in on all your secrets
No inhibition, no sin
How deep is your love?
Is it like the ocean?
What devotion are you?
How deep is your love?
Is it like nirvana?
Hit me harder again
How deep is your love?
How deep is your love?
How deep is your love?
Is it like the ocean?
Pull me closer again
How deep is your love?
How deep is your love?
How deep is your love?', 2015, 150);


insert into Song (song_id, artist_id, title, album_name, duration, lyrics, release_year, shazams_count) values (12, 8, 'Fair Trade', 'Certified Lover Boy', 5,' I dont understand why you blame me
Take me as I am, its the same me
Yeah
Senseless sight to see
Yeah
Senseless sight to see
Ayy
Feelin young but they treat me like the OG
And they want the tea on me, I swear these bitches nosy
Said he put some money on my head, I guess we gon see
I wont put no money on his head, my niggas owe me
I gotta be single for a while, you cant control me
Uno, dos, tres, in a race, they cant hold me
And I show my face in a case so you know its me
Imitation isnt flattery, its just annoyin me
And Im too about it
And the dirt that they threw on my name
Turned to soil and I grew up out it
Time for y all to figure out what y all gon do about it
Big wheels keep rollin, rollin
Im outside, 29, G5, seaside
I been losin friends and findin peace
But honestly, that sound like a fair trade to me
If I ever heard one and Im still here
Outside, frontline, Southside
I have been losin friends and findin peace
Honestly, that sound like a fair trade to me
Look, dont invite me over if you throw another pity party
Lookin back, its hard to tell you where I started
I dont know who love me, but I know that it aint everybody
I can never love her, she a busy body
Baby, if you want me, cant be turnin up with everybody, nah
Cant be fuckin on just anybody, yeah
I got feelings for you, thats the thing about it, yeah
You know that, its somethin when I sing about it, yeah
Momma used to be on disability but gave this ability
And now she walkin with her head high and her back straight
I dont think you feelin, Im out here
Bein everything they said I wouldnt be and couldn be
I dont know what happened to them guys that said they would be
I still see you at the top and they misunderstood me
I hold no resentment in my heart, thats that maturity
And we dont keep on us anymore, its with security
Im outside (yeah), 29 (yeah), G5, seaside
Ive been losin friends and findin peace
But honestly, that sound like a fair trade to me
If I ever heard one and Im still here
Outside, frontline, Southside (Southside)
Ive been losin friends and findinpeace
Honestly, that sound like a fair trade to me', 2021, 136);


insert into Playlist (playlist_id, user_id, title, song_count) values (1, 1, 'My Favorite', 3);
insert into Playlist (playlist_id, user_id, title, song_count) values (2, 2, 'Fifa', 2);
insert into Playlist (playlist_id, user_id, title, song_count) values (3, 2, 'The best songs', 4);
insert into Playlist (playlist_id, user_id, title, song_count) values (4, 1, 'Love', 4);
insert into Playlist (playlist_id, user_id, title, song_count) values (5, 5, 'Chill', 5);
insert into Playlist (playlist_id, user_id, title, song_count) values (6, 6, 'Motivation', 6);
insert into Playlist (playlist_id, user_id, title, song_count) values (7, 7, 'Rap', 3);
insert into Playlist (playlist_id, user_id, title, song_count) values (8, 8, 'Sad', 7);
insert into Playlist (playlist_id, user_id, title, song_count) values (9, 9, 'Dance', 5);
insert into Playlist (playlist_id, user_id, title, song_count) values (10, 10, 'Summer', 6);
insert into Playlist (playlist_id, user_id, title, song_count) values (11, 15, 'Fifa', 2);
insert into Playlist (playlist_id, user_id, title, song_count) values (12, 6, 'The best songs', 4);
insert into Playlist (playlist_id, user_id, title, song_count) values (13, 20, 'Love', 4);
insert into Playlist (playlist_id, user_id, title, song_count) values (14, 20, 'Chill', 5);
insert into Playlist (playlist_id, user_id, title, song_count) values (15, 29, 'Motivation', 3);
insert into Playlist (playlist_id, user_id, title, song_count) values (16, 19, 'Rap', 3);
insert into Playlist (playlist_id, user_id, title, song_count) values (17, 8, 'Fifa', 2);
insert into Playlist (playlist_id, user_id, title, song_count) values (18, 29, 'The best songs', 4);
insert into Playlist (playlist_id, user_id, title, song_count) values (19, 30, 'Love', 4);
insert into Playlist (playlist_id, user_id, title, song_count) values (20, 30, 'Chill', 5);
insert into Playlist (playlist_id, user_id, title, song_count) values (21, 19, 'Motivation', 6);
insert into Playlist (playlist_id, user_id, title, song_count) values (22, 30, 'Rap', 2);


insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (1, 1, 1);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (2, 2, 1);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (3, 3, 1);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (4, 10, 2);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (5, 11, 2);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (6, 8, 3);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (7, 7, 3);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (8, 12, 3);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (9, 1, 3);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (10, 4, 4);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (11, 15, 4);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (12, 9, 4);
insert into SongToPlayList (song_to_playlist_id, song_id, playlist_id) values (13, 14, 4);


UPDATE Song
SET release_year = '2/2/2015'
WHERE song_id = 15;


UPDATE Song
SET release_year = '5/20/2001'
WHERE song_id = 2;


UPDATE Song
SET release_year = '10/12/2002'
WHERE song_id = 3;


UPDATE Song
SET release_year = '2/21/2010'
WHERE song_id = 4;


UPDATE Song
SET release_year = '6/10/2009'
WHERE song_id = 5;


UPDATE Song
SET release_year = '5/7/1999'
WHERE song_id = 6;


UPDATE Song
SET release_year = '9/9/2018'
WHERE song_id = 7;


UPDATE Song
SET release_year = '10/10/2018'
WHERE song_id = 8;


UPDATE Song
SET release_year = '7/6/2019'
WHERE song_id = 9;


UPDATE Song
SET release_year = '6/5/2014'
WHERE song_id = 10;


UPDATE Song
SET release_year = '10/6/2018'
WHERE song_id = 11;


UPDATE Song
SET release_year = '9/24/2021'
WHERE song_id = 12;



UPDATE Song
SET release_year = '8/18/2018'
WHERE song_id = 13;


UPDATE Song
SET release_year = '9/1/2020'
WHERE song_id = 14;


-------------------------------------------FUNCTION-------------------------------------------

SELECT 
     MAX(shazams_count) highest_shazams
FROM 
     Song;
----------------
SELECT 
     MIN(shazams_count) highest_shazams
FROM 
     Song;


-------------------------------------------FUNCTION-------------------------------------------

SELECT 
    artist_id, 
    MIN(shazams_count)
FROM
    Song
GROUP BY artist_id
ORDER BY MIN(shazams_count);

-------------------------------------------PROCEDURE-------------------------------------------

CREATE PROCEDURE GetArtists
AS 
BEGIN
	SELECT 
	     first_name,
		 last_name,
		 birthday
	FROM
		Artist
	ORDER BY artist_id DESC;    
END;

EXEC GetArtists;



-------------------------------------------TRIGGER-------------------------------------------


CREATE TABLE USERS_HISTORY
(
	USERS_HISTORY_ID INT,
	OLD_NAME VARCHAR(30),
	NEW_NAME VARCHAR(30)
)


 CREATE TRIGGER UPDATE_INSERT_USERNAME_TRIGGER
 ON Users
 FOR UPDATE
 AS
	IF UPDATE (username)
	BEGIN
		INSERT INTO USERS_HISTORY(USERS_HISTORY_ID, OLD_NAME, NEW_NAME)
		SELECT I.user_id, D.username, I.username
		FROM inserted I , deleted D
		WHERE I.user_id = D.user_id
	END

UPDATE Users
SET username = username + '-' + 'NEW'
WHERE user_id IN (1, 2, 3, 4)

SELECT *
FROM  USERS_HISTORY
WHERE USERS_HISTORY_ID IN (1, 2, 3, 4)
