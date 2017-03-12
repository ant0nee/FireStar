# FireStar

# tables (terminal output)
```
mysql> describe board;
+------------+------------+------+-----+---------+-------+
| Field      | Type       | Null | Key | Default | Extra |
+------------+------------+------+-----+---------+-------+
| user_id    | int(11)    | NO   | PRI | NULL    |       |
| game_id    | int(11)    | NO   | PRI | NULL    |       |
| card0      | int(11)    | YES  | MUL | NULL    |       |
| card1      | int(11)    | YES  | MUL | NULL    |       |
| card2      | int(11)    | YES  | MUL | NULL    |       |
| card3      | int(11)    | YES  | MUL | NULL    |       |
| card4      | int(11)    | YES  | MUL | NULL    |       |
| card5      | int(11)    | YES  | MUL | NULL    |       |
| card6      | int(11)    | YES  | MUL | NULL    |       |
| card_order | varchar(7) | YES  |     | NULL    |       |
+------------+------------+------+-----+---------+-------+
10 rows in set (0.01 sec)

mysql> describe hand;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| user_id    | int(11)     | NO   | PRI | NULL    |       |
| game_id    | int(11)     | NO   | PRI | NULL    |       |
| card0      | int(11)     | YES  | MUL | NULL    |       |
| card1      | int(11)     | YES  | MUL | NULL    |       |
| card2      | int(11)     | YES  | MUL | NULL    |       |
| card3      | int(11)     | YES  | MUL | NULL    |       |
| card4      | int(11)     | YES  | MUL | NULL    |       |
| card5      | int(11)     | YES  | MUL | NULL    |       |
| card6      | int(11)     | YES  | MUL | NULL    |       |
| card7      | int(11)     | YES  | MUL | NULL    |       |
| card8      | int(11)     | YES  | MUL | NULL    |       |
| card9      | int(11)     | YES  | MUL | NULL    |       |
| card_order | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
13 rows in set (0.00 sec)

mysql> describe card_in_deck;
+---------+---------+------+-----+---------+-------+
| Field   | Type    | Null | Key | Default | Extra |
+---------+---------+------+-----+---------+-------+
| deck_id | int(11) | NO   | PRI | NULL    |       |
| card_id | int(11) | NO   | PRI | NULL    |       |
+---------+---------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> describe card_copy;
+-------------+---------+------+-----+---------+----------------+
| Field       | Type    | Null | Key | Default | Extra          |
+-------------+---------+------+-----+---------+----------------+
| card_id     | int(11) | NO   | PRI | NULL    | auto_increment |
| attack      | int(11) | NO   |     | NULL    |                |
| attack_dmg  | int(11) | YES  |     | NULL    |                |
| defense     | int(11) | NO   |     | NULL    |                |
| defense_dmg | int(11) | YES  |     | NULL    |                |
| health      | int(11) | NO   |     | NULL    |                |
| on_play     | text    | YES  |     | NULL    |                |
| on_death    | text    | YES  |     | NULL    |                |
| on_alive    | text    | YES  |     | NULL    |                |
| asleep      | int(1)  | YES  |     | NULL    |                |
+-------------+---------+------+-----+---------+----------------+
10 rows in set (0.00 sec)

mysql> describe card;
+-------------+---------+------+-----+---------+----------------+
| Field       | Type    | Null | Key | Default | Extra          |
+-------------+---------+------+-----+---------+----------------+
| card_id     | int(11) | NO   | PRI | NULL    | auto_increment |
| attack      | int(11) | NO   |     | NULL    |                |
| attack_dmg  | int(11) | YES  |     | NULL    |                |
| defense     | int(11) | NO   |     | NULL    |                |
| defense_dmg | int(11) | YES  |     | NULL    |                |
| health      | int(11) | NO   |     | NULL    |                |
| on_play     | text    | YES  |     | NULL    |                |
| on_death    | text    | YES  |     | NULL    |                |
| on_alive    | text    | YES  |     | NULL    |                |
+-------------+---------+------+-----+---------+----------------+
9 rows in set (0.00 sec)

mysql> describe deck;
+---------+---------+------+-----+---------+----------------+
| Field   | Type    | Null | Key | Default | Extra          |
+---------+---------+------+-----+---------+----------------+
| deck_id | int(11) | NO   | PRI | NULL    | auto_increment |
| user_id | int(11) | NO   | MUL | NULL    |                |
| game_id | int(11) | NO   |     | NULL    |                |
+---------+---------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> describe game;
+------------+----------+------+-----+---------+----------------+
| Field      | Type     | Null | Key | Default | Extra          |
+------------+----------+------+-----+---------+----------------+
| game_id    | int(11)  | NO   | PRI | NULL    | auto_increment |
| first_id   | int(11)  | NO   | MUL | NULL    |                |
| second_id  | int(11)  | NO   |     | NULL    |                |
| turn_timer | datetime | YES  |     | NULL    |                |
| turn       | int(1)   | NO   |     | NULL    |                |
+------------+----------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> describe user;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| user_id  | int(11)      | NO   | PRI | NULL    | auto_increment |
| username | varchar(15)  | YES  | UNI | NULL    |                |
| password | varchar(124) | NO   |     | NULL    |                |
| email    | varchar(255) | YES  | UNI | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> 
```