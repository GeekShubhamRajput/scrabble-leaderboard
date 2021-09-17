# scrabble leader board

## Description

A scrabble club requires a system to store members’ information and provide leader boards to show their top performing players.

For members we would want to store information such as the date they joined the club and their contact details.

All recorded scrabble games are head to head matches between 2 players, the player with the highest score at the end of the game wins.


## Requirements

This demo currently works with:

* Ruby 3.0
* Rails 6.1
* PostgreSQL

## Installation

To make this run on your system, follow below steps:

1. Extract this folder

2. Check your Ruby version
```
ruby -v
```
3. Install dependencies
```
bundle install
```
4. Initialize the database
```
rails db:create db:migrate db:seed
```
5. run application
```
rails s
```

## What does it do?

The demo will perform the following steps:
1. Create new club
2. Create new member for specific club
3. Edit profile for member
4. Create new game with players
5. Generate leader board for games

## What is included?

* Database schema definition (create table statements) of demo 
* A member’s profile screen showing their
  * number of wins
  * number of losses
  * their average score
  * their highest score, when and where it was scored, and against whom
* Interfaces to create and edit members’ details, such as name, contact number etc.
* A leader board screen to list the members with the top 10 average scores, for those members who have played at least 10 matches.
