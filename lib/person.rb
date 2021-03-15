# your code goes here
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(index1)
        @happiness = index1
        if index1 < 0
        return @happiness = 0
        elsif index1 > 10
        return @happiness = 10 
        end
    end

    def hygiene=(index2)
        @hygiene = index2
        if index2 < 0
        return @hygiene = 0
        elsif index2 > 10
        return @hygiene = 10 
        end
    end

    def happy?
        @happiness>7? true :false
    end

    def clean?
        @hygiene>7? true :false
    end

    def get_paid(salary) 
        @bank_account +=100
        return 'all about the benjamins' 
    end

    def take_bath
        self.hygiene = @hygiene +=4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene = @hygiene -=3
        self.happiness = @happiness += 2
        return '♪ another one bites the dust ♫'
    end

def call_friend(friend)
    self.happiness = @happiness +=3
    friend.happiness = friend.happiness+3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  
end

def start_conversation(friend,topic)
    if topic == "politics"
        self.happiness = @happiness-2
        friend.happiness = friend.happiness-2
        return 'blah blah partisan blah lobbyist' 
    
    elsif topic == "weather"
        self.happiness = @happiness+1
        friend.happiness = friend.happiness+1
        return  'blah blah sun blah rain'
    else 
        return  "blah blah blah blah blah"
    end

    end
end
