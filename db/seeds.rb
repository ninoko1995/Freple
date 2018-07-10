# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_num = 30
group_num = 100
event_num = 5

# group作成
group_num.times do |i|
	Group.create!(
		name:"団体#{i+1}",
		email: "g#{i+1}@g.g",
		password: "#{i}#{i}#{i}#{i}#{i}#{i}",
		captain_name: "団体#{i+1}の代表",
		tel: "#{i%10}"*11
		)
	event_num.times do |j|
		Event.create!(
			name:"団体#{i+1}の第#{j+1}回目の新歓イベント！ぜひご参加ください！",
			place:"渋谷",
			description: "団体#{i+1}の第#{j}回目の新歓イベント！ぜひご参加ください！今回は、渋谷のおしゃれなカフェでお茶会を開きます。よろしくね～～",
			price:j*1000,
			accepted_number:45-j*10,
			release: true,
			accepted:true,
			group_id: i+1,
			start_time:Time.current,
			end_time: Time.current,
			dead_line: Time.current
		)
	end
end
puts 'finish groups'


# user作成
user_num.times do |i|
	User.create!(
		name:"ユーザーその#{i+1}",
		email: "u#{i+1}@u.u",
		password: "#{i}#{i}#{i}#{i}#{i}#{i}")
end
puts 'finish users'

