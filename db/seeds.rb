# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

balrog = Image.create(name: 'Balrog', url: 'balrog.jpg')
bison = Image.create(name: 'Bison', url: 'bison.jpg')
blanka = Image.create(name: 'Blanka', url: 'blanka.jpg')
chun_li = Image.create(name: 'Chun li', url: 'chun_li.jpg')
dhalsim = Image.create(name: 'Dhalsim', url: 'dhalsim.jpg')
guile = Image.create(name: 'Guile', url: 'guile.jpg')
honda = Image.create(name: 'Honda', url: 'honda.jpg')
ken = Image.create(name: 'Ken', url: 'ken.jpg')
ryu = Image.create(name: 'Ryu', url: 'ryu.jpg')
sagat = Image.create(name: 'Sagat', url: 'sagat.jpg')
vega = Image.create(name: 'Vega', url: 'vega.jpg')
zangrief = Image.create(name: 'Zangrief', url: 'zangrief.jpg')

# Create main Character
Character.create(name: 'Yannick', current_life: 80, damage_attack: 7, shield: 6, experience: 10, image: ryu, life: 80)
Character.create(name: 'Geoffrey', current_life: 80, damage_attack: 5, shield: 8, experience: 2, image: ken, life: 80)