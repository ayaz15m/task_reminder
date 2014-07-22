# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Tasks.destroy_all

Tasks.create title: "Blackjack", due: "2014-07-14"
Tasks.create title: "Concert", due: "2014-07-21"
Tasks.create title: "Tweeter", due: "2014-07-12"
Tasks.create title: "Memer", due: "2014-07-22"
Tasks.create title: "Hw Tracker", due: "2014-08-30"
