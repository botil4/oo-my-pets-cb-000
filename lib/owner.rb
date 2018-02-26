class Owner

    attr_accessor :pets
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
      @@owner.clear
    end

end
