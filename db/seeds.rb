# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   user = User.new({:email=>"chasovyar8@mail.ru",:password=>"8cbhjnrb8"}).save(:validate=>false)
    pages = StaticPage.create([{name: 'main'}, {name: 'guest'}, {name: 'gwork'}, {name: 'mass'}, {name: 'mbank'}, {name: 'multrp'}, {name: 'news'}, {name: 'school'}, {name: 'spsih'}, {name: 'visit'}])