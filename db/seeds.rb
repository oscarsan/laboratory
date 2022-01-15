# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

measurements = Measurement.create([
  {"name":"Hemoglobiini2","unit":"g/l","upper_limit":"135","lower_limit":"168"},
  {"name":"Hemoglobiini2","unit":"g/l","upper_limit":"135","lower_limit":"168"},
  {"name":"LDL-kolesteroli","unit":"mmol/l","upper_limit":"0","lower_limit":"3"},
  {"name":"LDL-kolesteroli2","unit":"mmol/l","upper_limit":"0","lower_limit":"3"},
  ])
