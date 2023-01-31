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
        if @type == "dog"
          "Woof, woof"
        elsif @type == "spider"
          "..."
        end
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
    

  end

  require "./dog.rb"
  require "./spider.rb"
  
  dog = Dog.new("black", "Rex")
  spider = Spider.new(85, "Wilma")
  
  p dog.bring_a_stick()
  p spider.bring_a_stick()
  
  p dog.make_a_web()
  p spider.make_a_web()