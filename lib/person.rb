# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def bank_account(value)
        self.bank_account = value
    end

    def happiness(value)
        if value > 10 || value < 0
            puts "Please enter a value between 0 to 10"
        else 
            self.happiness = value
        end 
    end

    def hygiene(value)
        if value > 10 || value < 0
            puts "Please enter a value between 0 to 10"
        else 
            self.hygiene = value
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

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi Felix! It's Stella. How are you?"
    end

    def start_conversation(friend, topic)
        if topic.downcase == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic.downcase == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

roshan = Person.new("Roshan")

binding.pry