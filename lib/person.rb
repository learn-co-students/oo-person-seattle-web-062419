class Person
    attr_reader :name, :happiness
    attr_accessor :bank_account,  :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene =8
    end

    def clean?
        @hygiene>7 
    end
        
    def happy?
        @happiness>7 
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
  
    def happiness=(x)
        if (x>10)
            @happiness=10
        elsif (x<0)
            @happiness = 0
        else
            @happiness = x
        end
    end

    def hygiene=(x)
        if (x>10)
            @hygiene=10
        elsif (x<0)
            @hygiene = 0
        else
            @hygiene = x
        end
    end

    private
    def addmax(variable, amount, max=10)
        [max, amount+variable].min
    end

    def submin(variable, amount, min=0)
        [min, variable-amount].max
    end
   
    public
    def take_bath
        self.hygiene=(@hygiene + 4)
        puts @hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
        
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        friend.happiness=(friend.happiness + 3)
        self.happiness=(@happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation (friend,topic)
        if topic == "politics"
            friend.happiness=(friend.happiness - 2)
            self.happiness=(@happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness=(friend.happiness + 1)
            self.happiness=(@happiness + 1)
            return "blah blah sun blah rain"
        end
        "blah blah blah blah blah"
    end
    

end

# a = Person.new("a")
# b = Person.new("b")

# a.start_conversation(b,"politics")
