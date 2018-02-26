class Owner

    attr_accessor :pets, :name
    attr_writer
    attr_reader :species

    @@owners = []

    def initialize(species)
      @species = species
      @@owners << self
      @pets = {fishes: [], cats: [], dogs: []}
    end

    def self.all
      @@owners
    end

    def self.reset_all
      @@owners.clear
    end

    def self.count
      @@owners.count
    end

    def say_species
      "I am a #{self.species}."
    end

    def buy_fish(name)
      fish = Fish.new(name)
      @pets[:fishes] << fish
    end

    def buy_cat(name)
      cat = Cat.new(name)
      @pets[:cats] << cat
    end

    def buy_dogs(name)
      dog = Dog.new(name)
      @pets[:dogs] << dog
    end

end
