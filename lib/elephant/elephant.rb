puts "Elephant loaded"
class Elephant

   attr_reader  :name, :species, :sex, :dob, :note
    @@all = []

  def initialize(name, species, sex, dob, note)
      @name = name
      @species = species
      @sex = sex
      @dob = dob
      @note = note
      @@all << self   
  end
   
  def self.all
    @@all
  end
end