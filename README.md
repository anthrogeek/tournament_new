# P2: Tournament Results 


### Brief

Write a Python module that uses the PostgreSQL database to keep track of players and matches in a Swiss tournament style play.

No player is eliminated and each player will be paired with other players of the same caliber, ie one loss, no loss, etc.

This project has two parts: defining the database schema (SQL table definitions), and writing the code that will use it.

## Delivery

Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament. Including:

- tournament.sql
- tournament.py

### Dependancies
- [Python](https://www.python.org/downloads/) 
- [Vagrant](http://vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [fullstack-nanodegree-vm repository](http://github.com/udacity/fullstack-nanodegree-vm)

### To Run
- Launch the Vagrant VM
- log on to machine using command vagrant ssh
-- $ psql
-- => \i tournament.sql
-- => \q
-- $ python tournament_test.py

###References
-[Table Design](https://discussions.udacity.com/t/p2-normalized-table-design/19927/11)


-[Loop by two](http://stackoverflow.com/questions/2990121/how-do-i-loop-through-a-python-list-by-twos)

