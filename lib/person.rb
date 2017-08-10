require 'pry'

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    end
    if @happiness < 0
      @happiness = 0
    end
    @happiness
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    end
    if @hygiene < 0
      @hygiene = 0
    end
    @hygiene
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
    else false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene= @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene= @hygiene - 3
    self.happiness= @happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness= @happiness + 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    speakers = [self, friend]

    if topic == "politics"
      speakers.each do |speaker|
        speaker.happiness -= 2
      end
      return "blah blah partisan blah lobbyist"
    end
    if topic == "weather"
      speakers.each do |speaker|
        speaker.happiness += 1
      end
      return "blah blah sun blah rain"
    end
    if topic == "programming"
      "blah blah blah blah blah"
    end
  end

end
