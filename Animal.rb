require "./remover.rb"
require "./owner.rb"

class Animal

    attr_reader :id, :type, :number_of_legs
    attr_accessor :name, :owner

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

      def owner=(owner)
        @owner = owner
        owner.animals.push(self) unless owner.animals.include?(self)
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
  p dog.owner
  # => #<Owner:0x00000129e0aeb400 @name="Alex", @animals=[#<Dog:0x00000129e0af3a60 @id=177, @name="Rex", @number_of_legs=2, @liked_food=#<DogFood:0x00000129e0af3880>, @type=#<NoFood:0x00000129e0af3920>, @color="black", @owner=#<Owner:0x00000129e0aeb400 ...>>]>
  puts dog.owner.name
  # => Alex
  puts alex.animals
  # => #<Dog:0x00000129e0af3a60>

  p   spider.owner
  p alex.add_animal(spider)
  p spider.owner
  p spider.owner.name
  p alex.animals
  
  p animal.owner
  p alex.add_animal(animal)
  p animal.owner
  p animal.owner.name
  
  
  p alex.animals.count
  p alex.animals.first.name
  p alex.animals.first.number_of_legs



  p second_animal = Animal.new("cat", 4, "Kitty")
  p second_animal.owner
  p alex.animals.count
  
  p second_animal.owner = alex
  
  p second_animal.owner
  p alex.animals.count
  p alex.animals.last
  p alex.animals.last.name
  

