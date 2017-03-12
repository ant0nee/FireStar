CREATE TABLE user( 

	user_id int AUTO_INCREMENT, #id of user
	username varchar(15) UNIQUE, #unique username for user
	password varchar(124) NOT NULL, #encrypted password
	email varchar(255) UNIQUE, #unique email address for user
	PRIMARY KEY(user_id)

);

CREATE TABLE game( 

	game_id int AUTO_INCREMENT, #id of game
	first_id int NOT NULL, #id of the player going first
	second_id int NOT NULL, #id of the player going second
	turn_timer datetime NULL, #ends turn after 1 min 30
	turn int(1) NOT NULL, #whos turn it is. 0 for first id and 1 for second id
	PRIMARY KEY(gameId),
	FOREIGN KEY(first_id) REFERENCES user(user_id)
	ON DELETE CASCADE

);

CREATE TABLE deck(

	deck_id int AUTO_INCREMENT, #id of deck
	user_id int NOT NULL, #id of user that the deck belongs to 
	game_id int NOT NULL, #id of game that the deck belongs to 
	PRIMARY KEY(deck_id)
	FOREIGN KEY(user_id) REFERENCES user(user_id)
	ON DELETE CASCADE

);

CREATE TABLE card(

	card_id int AUTO_INCREMENT, #id of the card
	attack int NOT NULL, #base attack of card
	attack_dmg int NULL, #base attack dmg of card
	defense int NOT NULL, #base defense of card
	defense_dmg int NULL, #base defense dmg of card
	health int NOT NULL, #base health of card
	on_play text NULL, #code when card played
	on_death text NULL, #code when card dies
	on_alive text NULL, #code when card on board
	PRIMARY KEY(card_id)

);

CREATE TABLE card_copy(

	card_id int AUTO_INCREMENT, #id of the card
	attack int NOT NULL, #current attack of card
	attack_dmg int NULL, #current attack dmg of card
	defense int NOT NULL, #current defense of card
	defense_dmg int NULL, #current defense dmg of card
	health int NOT NULL, #current health of card
	on_play text NULL, #modified code when card played
	on_death text NULL, #modified code when card dies
	on_alive text NULL, #modified code when card on board
	asleep int(1) NULL, #whether the card can attack. asleep = 0, ready = 1
	FOREIGN KEY(card_id) REFERENCES cards(card_id)
	ON DELETE CASCADE

);

DROP TABLE IF EXISTS card_in_deck;
CREATE TABLE card_in_deck(

	deck_id int NOT NULL, #id of the deck
	card_id int NOT NULL, #card that is in the deck
	PRIMARY KEY(deck_id, card_id)

);


CREATE TABLE hand(

	user_id int NOT NULL, #id of the user that can see the hand
	game_id int NOT NULL, #id of the game
	#cards in the hand
	card0 int NULL,
	card1 int NULL,
	card2 int NULL,
	card3 int NULL,
	card4 int NULL,
	card5 int NULL,
	card6 int NULL,
	card7 int NULL,
	card8 int NULL,
	card9 int NULL,
	order VARCHAR(10) NULL, #order the cards are in 
	PRIMARY KEY(user_id, game_id),
	FOREIGN KEY(card0) REFERENCES card(card_id),
	FOREIGN KEY(card1) REFERENCES card(card_id),
	FOREIGN KEY(card2) REFERENCES card(card_id),
	FOREIGN KEY(card3) REFERENCES card(card_id),
	FOREIGN KEY(card4) REFERENCES card(card_id),
	FOREIGN KEY(card5) REFERENCES card(card_id),
	FOREIGN KEY(card6) REFERENCES card(card_id),
	FOREIGN KEY(card7) REFERENCES card(card_id),
	FOREIGN KEY(card8) REFERENCES card(card_id),
	FOREIGN KEY(card9) REFERENCES card(card_id)

);

CREATE TABLE board( 

	user_id int NOT NULL, #id of the user that the board belongs to 
	game_id int NOT NULL, #id of the game
	#cards on the board
	card0 int NULL,
	card1 int NULL,
	card2 int NULL,
	card3 int NULL,
	card4 int NULL,
	card5 int NULL,
	card6 int NULL,
	order VARCHAR(7) NULL, #order the cards are in 
	PRIMARY KEY(user_id, game_id),
	FOREIGN KEY(card0) REFERENCES card(card_id),
	FOREIGN KEY(card1) REFERENCES card(card_id),
	FOREIGN KEY(card2) REFERENCES card(card_id),
	FOREIGN KEY(card3) REFERENCES card(card_id),
	FOREIGN KEY(card4) REFERENCES card(card_id),
	FOREIGN KEY(card5) REFERENCES card(card_id),
	FOREIGN KEY(card6) REFERENCES card(card_id)

);