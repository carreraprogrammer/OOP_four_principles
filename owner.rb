class Owner
    attr_accessor :name
    attr_reader :animals
  
    def initialize(name)
      @name = name
      @animals = []
    end
  
    # Instead of setter for entire collection a method to add animals one by one
    def add_animal(animal)
      @animals.push(animal)
    end
  end