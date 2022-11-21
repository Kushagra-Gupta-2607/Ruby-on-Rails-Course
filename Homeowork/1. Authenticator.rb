# Usage: Arrays, Hashes, Branching, While Loop

users = [
          { username: "Kushagra", password: "password1" },
          { username: "Sarah", password: "password2" },
          { username: "John", password: "password3" },
          { username: "Rose", password: "password4" },
          { username: "Mia", password: "password5" }
        ]

def auth_user(username, password, list_of_users)
  list_of_users.each { |user| return user if user[:username] == username && user[:password] == password}
  "Credentials were not correct"
end

puts "Welcome to the Authenticator"
25.times { print '-' }
puts

puts "This program will take input from the user and compare password."
puts "If passwords is correct, you will get back the user object\n"
puts

attempts = 0
while attempts < 3
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  puts auth_user(username, password, users)
  
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == 'n'
  
  attempts+=1
end

puts "You have exceeded the number of attempts" if attempts == 3

