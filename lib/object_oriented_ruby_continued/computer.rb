class Computer
  attr_accessor :brand, :screen_size, :model_name, :model_year
  attr_reader :asleep, :last_backed_up_at

  @@all = []

  def initialize (brand:, screen_size:, model_name:, model_year:)
    @brand = brand
    @screen_size = screen_size
    @model_name = model_name
    @model_year = model_year
  end

  # def initialize (attributes)
  #   attributes.each do |attribute_name, value|
  #     self.send("#{attribute_name}=", value)
  #   end
  # end
  
  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(attributes)
    computer = Computer.new(attributes)
    computer.save
    computer
  end

  def self.backed_up
    all.filter do |computer|
      computer.last_backed_up_at
    end
  end

  def sleep
    @asleep = true
  end

  def wake_up
    @asleep = false
  end

  def back_up
    @last_backed_up_at = DateTime.now
  end

  def about_this_computer
    {
      brand: @brand,
      screen_size: @screen_size,
      model_name: @model_name,
      model_year: @model_year,
      last_backup_time: @last_backed_up_at.strftime("%m-%e-%y %H:%M")
    }
  end

end


# create and return the first computer within this method
def first_computer
  first_computer = Computer.new(brand: "Apple", screen_size: 15.0, model_name: "MacBook Pro", model_year: 2012)
  # computer.brand = "Apple"
  # computer.screen_size = 15.0
  # computer.model_name = "Macbook Pro"
  # computer.model_year = 2012
  # computer
end

# create and return the second computer within this method
def second_computer
  second_computer = Computer.new(
  brand: "Apple",
  screen_size: 13.0,
  model_name: "Macbook Air",
  model_year: 2015
  )
end