# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 20.times do |i|
#   uid = [1, 2].sample
#   Memo.create!(title: "#{i+1} 번 째 글입니다.", content: "Hack Your Life!!!!", user_id: uid)
# end
User.create!(email: 'admin@admin.com', password: '123456')
User.create!(email: 'second@admin.com', password: '123456')
