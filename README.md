# Street Fighter on RoR

This application is a remake of Street Fighter developped with RoR.
The main services are : 
* CRUD for characters
* Select Fighters and Fight
* See the fights history
* Administration of images (pictures of character)

## Table of contents

- [Getting Started](#getting-started)
- [Built With](#built-with)
- [Versioning](#versioning)
- [Authors](#authors)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 
All of the instructions are used with PowerShell (PSVersion 5.1.19041.610)

### Prerequisities

#### Ruby

In order to install and run the application you'll need ruby 3.0.0 or later
* [Ruby](https://www.ruby-lang.org/en/)

#### Database
No need to install a database.

### Installation 

Clone the project
1. <code>git clone https://github.com/sebastienbruno/streetfighteronrails.git</code>
2. <code>cd streetfigheronrails</code>

### Usage with bundle 

3. <code>bundle</code>
4. <code>bundle exec rails webpacker:install</code>
5. <code>rails server</code>
6. Once the application is running you can visit http://localhost:3000 (or your env_url:env_port) to see the interface.

## Authors

* **Sebastien BRUNO**

## Next features

* Add unit test, end-to-end test
* Use character custumization (damage, shield, experience) during the fight
* Add arms selection
* Add a caching system
