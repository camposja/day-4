class Person
  attr_reader "name", "phone_number", "address", "position" , "salary", "slack_account", "github_account"

  def initialize(name, phone_number, address, position, salary, slack_account, github_account)
    @name = name
    @phone_number = phone_number
    @address = address
    @position = position
    @salary = salary
    @slack_account = slack_account
    @github_account = github_account
  end
end

people = []

loop do
  puts "Add a person (a), Search for a person (s), Delete a person (d)"
  selection = gets.chomp

  if selection == "a"
    puts "What is the new person's name? "
    name = gets.chomp
    puts "What is the person's phone number? "
    phone_number = gets.chomp
    puts "What is the person's address? "
    address = gets.chomp
    puts "What is the person's position or title? "
    position = gets.chomp
    puts "What is the person's salary? "
    salary = gets.chomp
    puts "What is the person's slack handle? "
    slack_account = gets.chomp
    puts "What is the person's GitHub user? "
    github_account = gets.chomp

    new_person = Person.new(name, phone_number, address, position, salary, slack_account, github_account)

    people << new_person
  elsif selection == "s"
    puts "Input first name of the person you want to search: "
    search = gets.chomp

    found_person = people.find { |person| person.name == search }

    if found_person
      puts "The employee's name is #{found_person.name}"
      puts "The employee's phone is #{found_person.phone_number}"
      puts "The employee's address is #{found_person.address}"
      puts "The employee's position is #{found_person.position}"
      puts "The employee's salary is #{found_person.salary}"
      puts "The employee's Slack handle is #{found_person.slack_account}"
      puts "The employee's GitHub user is #{found_person.github_account}"
    else
      puts "The person does not exist in TIY"
    end
  elsif selection == "d"
    index = 0
    finder = false
    print "Type first name of the person you want to delete: "
    delete = gets.chomp
    people.each do |person|
      if person.name == delete
        finder = true
        people.slice!(index)
        puts "#{delete} has been deleted.\n"
      end
      index += 1
    end
    if finder == false
      puts "The person is not in TIY"
    else
      puts "thank you for chosing TIY, good bye!"
  end
end
end
