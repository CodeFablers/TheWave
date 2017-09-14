module Libraries
  # Creates user's own library
  class CreateScenario
    attr_reader :owner

    def initialize(owner)
      @owner = owner
    end

    def perform
      library_name = owner.email.split('@').first
      Library.create!(owner: owner, name: library_name)
    end
  end
end
