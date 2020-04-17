# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Habit.destroy_all
Day.destroy_all

user1 = User.create(username: "theo", password_digest: "abc123IsNotAPasswordDigestButWillHaveToBeForNow")

habit1 = Habit.create(name: "Exercise", archived: false, user: user1, 
    m: true, t: true, w: true, r: true, f: true, s: true, u: true)
habit2 = Habit.create(name: "Read", archived: false, user: user1, 
    m: true, t: true, w: true, r: true, f: true, s: true, u: true)
habit3 = Habit.create(name: "Doomscrolling", archived: false, user: user1, 
    m: true, t: true, w: true, r: true, f: true, s: true, u: true)

#          date=string: "2020-04-16"
day1 = Day.create(date: "2020-04-10", habit: habit1, unmarked: false, complete: true, incomplete: false, skipped: false)
day2 = Day.create(date: "2020-04-11", habit: habit3, unmarked: false, complete: true, incomplete: false, skipped: false)
day3 = Day.create(date: "2020-04-12", habit: habit2, unmarked: false, complete: false, incomplete: true, skipped: false)
day4 = Day.create(date: "2020-04-13", habit: habit3, unmarked: false, complete: true, incomplete: false, skipped: false)
day5 = Day.create(date: "2020-04-14", habit: habit1, unmarked: false, complete: false, incomplete: false, skipped: true)
day6 = Day.create(date: "2020-04-15", habit: habit2, unmarked: false, complete: true, incomplete: false, skipped: false)

puts "老子种了一些土豆🥔🥔🥔"
