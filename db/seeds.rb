# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'json'

file = File.read('./lib/course.json')
myData = JSON.parse(file)
myData.each do |d|
  Course.create({c_id: d['id'], c_type: d['type'], c_code: d['code'], c_name: d['name']})
end

file = File.read('./lib/subject.json')
myData = JSON.parse(file)
myData.each do |d|
  Subject.create({s_id: d['id'], s_name: d['name'], s_type: d['type'], s_abbr: d['abbreviation']})
end

file = File.read('./lib/instructor.json')
myData = JSON.parse(file)
myData.each do |d|
  Instructor.create({i_id: d['id'], i_email: d['email'], i_first: d['first'], i_middle: d['middle'], i_last: d['last'], i_type: d['type']})
end
