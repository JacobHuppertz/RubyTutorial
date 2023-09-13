require 'date'

#Printing strings and varibales
DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Saturday", "Sunday",] 
dayname = DAYNAMES[Time.now.wday]
puts "hello, world!", "how's it going? \nToday is #{dayname}
"
print "hello, world!\n"
first_name = "Jacob"
last_name = "Huppertz"

print "First Name: " + first_name + " Last Name: " + last_name + " Via Concatenation (combining)\n"
print "First Name: #{first_name} Last Name: #{last_name} Via Interpolation (inserting)\n"
print "\n"

password = "goldilocks"
if password.length < 6
    print "Password is to short\n"
elsif password.length < 50
    print "Password is perfect!\n"
else
    print "Password is to long\n"
end
print "\n"

#Chceking boolean values
x = "foo"
y = "bar"
if x.length == 0 && y.length == 0
    print "Both strings are empty!\n"
else print "At least one string is not empty\n"
end

if !(x.length == 0)
    print "x is not empty\n"
else print "x is empty\n"
end
print "\n"

#Method testing
if x.empty? && y.empty?
    print "Both strings are empty\n"
else
    print "At least one of the strings is not empty\n"
    x = x.upcase!
    y = y.upcase!
    print "#{x} #{y}\n"
end
print "\n"

#For loop testing
for i in 0..4
    print i.to_s + " "
end
print "\n"

#Array testing
a = "badger".split("")
print a[4].to_s + " "
print a[0].to_s + " "
print a[5].to_s + " "
print a[2].to_s + " "
print a[1].to_s + " "
print a[3].to_s + " "
print "\n"

print a.slice(2, 4)
print "\n"

print a.slice(3..5)
print "\n"

print a.reverse
print "\n"

print a.join
print "\n"

#Hash Practice
user = {}
user["first_name"] = "Jacob"
user["last_name"] = "Huppertz"
print user
print "\n"

print user["first_name"] + " " + user["last_name"]
print "\n"

params = {}
params[:user] = {name: "Jacob Huppertz", email: "jhuppertz@example.com"}
print params
print "\n"
print params[:user][:email] 
print "\n"

flash = {success: "It worked!", danger: "It failed."}
flash.each do |key, value|
    puts "Key #{key.inspect} has value #{value.inspect}"
end
print "\n"

#Count practice
sonnet = "Let me not to the marriage of true minds
Admit impediments. Love is not love
Which alters when it alteration finds,
Or bends with the remover to remove.
O no, it is an ever-fixed mark
That looks on tempests and is never shaken
It is the star to every wand'ring bark,
Whose worth's unknown, although his height be taken.
Love's not time's fool, though rosy lips and cheeks
Within his bending sickle's compass come:
Love alters not with his brief hours and weeks,
But bears it out even to the edge of doom.
    If this be error and upon me proved,
    I never writ, nor no man ever loved."

uniques = {}
words = sonnet.scan(/\w+/)

words.each do |word|
    if uniques[word]
        uniques[word] += 1
    else
        uniques[word] = 1
    end
end
puts uniques

#Functions and Block practice
def GetDayOfWeek(time)
    return Date::DAYNAMES[time.wday]
end

print GetDayOfWeek(Time.now)
print "\n"

#Palindrome function
def IsPalindrome?(string)
    stringLowerCase = string.downcase
    stringLowerCase == stringLowerCase.reverse
end
print IsPalindrome?("racecar")
print "\n"
print "\n"

#Block Practice
def sandwich
    puts "top bread"
    yield
    puts "bottom bread"
end
  
sandwich do
    puts "mutton, lettuce, and tomato"
end
print "\n"

#MAP
#Imperative Version
states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]
def imperative_urls(states)
    urls = []
    states.each do |state|
      urls << state.downcase.split.join("-")
    end
    urls
end
p imperative_urls(states)

#Map using .map in order to edit and execute functions on specific elements
#[For these items].map(element of [these items]: do a function)
states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]
def urlify(string)
	string.downcase.split.join("-")
end
def full_urls(states)
	states.map{|state| "https://example.com/" + urlify(state)}
end
p full_urls(states)
print "\n"

#SELECT
#Imperative version
def imperative_singles(states)
    singles = []
    states.each do |state|
      if (state.split.length == 1)
        singles << state
      end
    end
    singles
end
puts imperative_singles(states).inspect
  
#Selecting elements with .select
#Functional version
def functional_singles(states)
    states.select { |state| state.split.length == 1 }
end
puts functional_singles(states).inspect
print "\n"

#REDUCE
#States Reduce
#Imperative Version
def imperative_lengths(states)
    lengths = {}
    states.each do |state|
      lengths[state] = state.length
    end
    lengths
end
puts imperative_lengths(states)

#Functional Version
def functional_lengths(states)
    states.reduce({}) do |lengths, state|
      lengths[state] = state.length
      lengths
    end
end
puts functional_lengths(states)
print "\n"