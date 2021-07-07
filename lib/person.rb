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

    def happiness=(int)
        if int < 0
            @happiness = 0
        elsif int > 10
            @happiness = 10
        else
            @happiness = int
        end
    end

    def hygiene=(int)
        if int < 0
            @hygiene = 0
        elsif int > 10
            @hygiene = 10
        else
            @hygiene = int
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

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath

        # if (self.hygiene + 4) >= 10
        #     self.hygiene = 10
        #     "♪ Rub-a-dub just relaxing in the tub ♫"
        # elsif (self.hygiene + 4) < 10
        #     self.hygiene += 4
        #     "♪ Rub-a-dub just relaxing in the tub ♫"
        # end

        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        # if (self.hygiene - 3) <= 0
        #     self.hygiene = 0
        #     self.happiness += 2
        #     "♪ another one bites the dust ♫"
        # elsif (self.hygiene - 3) > 0
        #     self.hygiene -= 3
        #     self.happiness += 2
        #     "♪ another one bites the dust ♫"
        # end

        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
