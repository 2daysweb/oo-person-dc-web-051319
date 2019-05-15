class Person 

attr_reader :name 


def initialize(name)

@name = name 
@balance = 25 
@happiness = 8 
@hygiene = 8 
end 

def clean?
	if @hygiene > 7  
	end 
end 
def happy?
	if @happiness + 4 < 10
		@happiness+=4
	else
		 @happiness=10
	end 
end 
def take_bath
	if @hygiene+4 < 10
		@hygiene+=4
	else @hygiene+=4
	end
	return "♪ Rub-a-dub just relaxing in the tub ♫"
end 

def work_out
    if @happiness + 2 < 10
	   @happiness+=2
	else
		 @happiness=10
	end 
	if @hygiene-3 < 0
			@hygiene = 0 
	else 
		@hygiene-=3
	end
	puts @hygiene
	puts @happiness
	return "♪ another one bites the dust ♫"
end 

def call_friend(friend)
	self.happiness+= 3
	@happiness+=3
	puts "Hi #{self.name}! It's #{@name}. How are you?" 
end 

def get_paid(salary)
@account+=salary
return 'all about the benjamins'
end 
end 

sam = Person.new("sam")
bobby = Person.new("bobby")

bobby.call_friend(sam)