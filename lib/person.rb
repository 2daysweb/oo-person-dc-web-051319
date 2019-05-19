require 'pry'
class Person 

attr_reader :name, :happiness, :hygiene
attr_accessor :bank_account 


def initialize(name)

@name = name 
@bank_account = 25 
@happiness = 8 
@hygiene = 8 
end 

def happiness=(new_happiness)
  if new_happiness > 10 
     @happiness = 10 
  elsif new_happiness < 0
     @happiness = 0
  else 
    @happiness = new_happiness
  end
end 

def hygiene=(new_hygiene)
  if new_hygiene> 10 
     @hygiene = 10 
  elsif new_hygiene < 0 
        @hygiene = 0
  else 
     @hygiene = new_hygiene
end
end

def clean?
	if @hygiene > 7 
	  true 
	else
	  false 
end 
end 

def happy?
	if @happiness > 7
	  true 
	else
	  false 
end
end

def take_bath
		self.hygiene=(@hygiene+=4)
	return "♪ Rub-a-dub just relaxing in the tub ♫"
end 

def work_out
     self.happiness=(@happiness+=2)
	   self.hygiene=(@hygiene-=3)
	return "♪ another one bites the dust ♫"
end 

def call_friend(friend)
 self.happiness=(@happiness+=3)
 	friend.happiness=(friend.happiness+=3)
	return "Hi #{friend.name}! It's #{self.name}. How are you?" 

end

def get_paid(salary)
@bank_account+=salary
return 'all about the benjamins'
end 

end

