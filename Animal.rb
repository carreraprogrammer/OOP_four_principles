require "./remover.rb"
require "./owner.rb"

class Animal

    attr_reader :id, :type, :number_of_legs
    attr_accessor :name

    def initialize(type, number_of_legs, name = "Unknown")
        @id = Random.rand(1..1000)
        @name = name
        @number_of_legs = number_of_legs
        @type = 
        @liked_food = NoFood.new()
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
     
      def likes_food?(food)
        @liked_food.is_liked?(food)
      end

  end

  require "./dog.rb"
  require "./spider.rb"

  animal = Animal.new("lion", 4, "Pedro")  
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

  p animal.likes_food?("meat")
  #=> false

  p dog.likes_food?("meat")
  # => true

  p spider.likes_food?("meat")
  # => false

  p spider.likes_food?("meat")
  # => false

  p  dog.likes_food?("bug")
  # => false

  p  spider.likes_food?("bug")
  # => true}

  alex = Owner.new("Alex")

  puts alex.animals
  alex.add_animal(dog)
  puts alex.animals
  # => #<Dog:0x00000224ff5033b0>
  alex.add_animal(spider)
  puts alex.animals
  #<Dog:0x000001f5c66f7c10>
  #<Spider:0x000001f5c66f7968>
  alex.add_animal(animal)
  puts alex.animals.map {|animal| animal.name}
  #Rex
  #Wilma
  #Pedro
  
  p alex.animals.count
  # 3
  p alex.animals.first.name
  # "Rex"
  p alex.animals.first.number_of_legs
  # 2