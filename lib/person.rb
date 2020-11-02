class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name, money=25, mood=8, clean=8)
        @name = name
        @bank_account = money
        @happiness = mood
        @hygiene = clean
    end
    def happiness=(mood)
        @happiness = mood
        @happiness = 10 if mood > 10
        @happiness = 0 if mood < 0
    end
    def hygiene=(clean)
        @hygiene = clean
        @hygiene = 10 if clean > 10
        @hygiene = 0 if clean < 0
    end
    def happy?
        if @happiness > 7 
            true
        else false
        end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(money)
        @bank_account += money
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        [person, self].each {|x| x.happiness += 3}
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        people = [self, person]
        if topic == "politics"
        people.each {|x| x.happiness -= 2}
        word1, word2 = ["partisan", "lobbyist"]
        elsif topic == "weather"
            people.each {|x| x.happiness += 1}
            word1, word2 = ["sun", "rain"]
        end
        word1 ||= "blah"
        word2 ||= "blah"
        convo = "blah blah #{word1} blah #{word2}"
        end
end