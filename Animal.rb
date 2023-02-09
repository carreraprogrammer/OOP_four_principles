require "./remover.rb"

class Animal

    attr_reader :id, :type, :number_of_legs
    attr_accessor :name

    def initialize(type, number_of_legs, name = "Unknown")
        @id = Random.rand(1..1000)
        @name = name
        @number_of_legs = number_of_legs
        @type = type
      end
  
      def speak
        "grrrr"
      end

      def bring_a_stick
        if @type == "dog"
          "Here is your stick: ---------"
        end
      end
    
      def make_a_web
        if @type == "spider"
          "www"
        end
      end

      def remove_leg
        remover = Remover.new()
        @number_of_legs = remover.decrease(@number_of_legs)
      end
    

  end

  require "./dog.rb"
  require "./spider.rb"

  animal = Animal.new("lion", 4, "Rex")  
  dog = Dog.new("black", "Rex")
  spider = Spider.new(85, "Wilma")

  p animal
  
  p dog.bring_a_stick()
  #=> "Here is your stick: ---------"

  p spider.bring_a_stick()
  #=> nil
  
  p dog.make_a_web()
  #=> nil
  p spider.make_a_web()
  #=> "www"

  p animal.number_of_legs
  # => 4
  p dog.number_of_legs
  # => 4
  p spider.number_of_legs
  # => 4

  p animal.remove_leg()
  # => 3
  p dog.remove_leg()
  # => 3
  p spider.remove_leg()
  # => 7

  p animal.remove_leg()
  # => 2
  p dog.remove_leg()
  # => 2
  p spider.remove_leg()
  # => 2