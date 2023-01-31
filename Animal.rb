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
      "Bla bla bla"
    end

  end

  animal_1 = Animal.new("dog", 4, "Rex")
  p animal_1.id
  p animal_1.type
  p animal_1.name
  p animal_1.number_of_legs
  
  animal_2 = Animal.new("cat", 8)
  p animal_2.name
  p animal_2.name = "Fluffy"
  p animal_2.name