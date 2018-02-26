class Owner

    attr_accessor
    attr_writer
    attr_reader :species

    @@owners = []

    def initialize(species)
      @species = species
      @@owners << self
    end

    def reset_all
      @@owner.clear
    end

end
