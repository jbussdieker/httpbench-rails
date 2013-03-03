# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s1 = Site.create(:name => 'wiki', :host => 'wiki.jbussdieker.com', :port => 80, :address => 'wiki.jbussdieker.com')
s2 = Site.create(:name => 'wiki2', :host => 'wiki.jbussdieker.com', :port => 80, :address => '54.244.135.43')
p1 = s1.pages.create(:name => 'home', :path => '/')
p2 = s2.pages.create(:name => 'home', :path => '/')
