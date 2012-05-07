# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.create(name: 'Canada', abbreviation: 'CA')
Province.create(name: 'Alberta', abbreviation: 'AB')
Clientcategory.create([{description: 'Law Firm'},{description: 'Restaurant'}, {description: 'Dry Goods'}, {description: 'Hotel'}, {description: 'Grocery'}])