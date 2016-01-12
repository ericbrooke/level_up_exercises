class Dinosaur
  attr_reader :name, :period, :continent, :diet, :weight, :walking, :description

  def initialize(name, options = {})
    @name = name
    @period = options[:period]
    @continent = options[:continent]
    @diet = options[:diet]
    @weight = options[:weight]
    @walking = options[:walking]
    @description = options[:description]
  end

  def carnivore?
    carnivorous = %w(Carnivore Insectivore Piscivore)
    carnivorous.include?(@diet)
  end

  def what_size?
    return "Unknown" if @weight.nil?
    @weight > 2000 ? "Big - Over a ton" : "Small - Under a ton"
  end
end
