
# dinodex
# name, period, continent, diet, weight_in_lbs, walking, description

# african_dinosaur_export
# genus, period, carnivore, weight, walking

# load file x
# parse csv x
# see database contents x
# search by walking, diet, periods, small or big, or combine
# look at each dinosaur x
# show reults from search/filter x
# search by parameters
# export json

require 'csv'
require 'table_print'

class Dinodex
  attr_accessor :columns

  def initialize(filename)
    @store = csv_to_array(filename)
    @columns
  end

  def csv_to_array(file_location)
    csv = CSV.parse(File.open(file_location, 'r') { |f| f.read })
    titles = csv.shift
    titles = titles.map { |f| f.downcase.to_sym }
    @columns = titles
    csv.collect { |record| Hash[*titles.zip(record).flatten(1)] }
  end

  def find(keyword)
    result = @store.find { |x| x.fetch(:name) == keyword }
    print_one(result)
  end

  def select(category, keyword)
    results = @store.find_all { |x| x.fetch(category.to_sym) == keyword }
    tp results
  end

  def print_all
    tp @store
  end

  def sort
    @store.sort
  end

  def print_one(result)
    puts "-------------------------"
    tp [result], name: { width: 100 }
    tp [result], period: { width: 100 }
    tp [result], continent: { width: 100 }
    tp [result], diet: { width: 100 }
    tp [result], weight_in_lbs: { width: 100 }
    tp [result], walking: { width: 100 }
    tp [result], description: { width: 100 }
  end
end

d = Dinodex.new('dinodex.csv')
d.print_all
p d.columns
p d.find('Giganotosaurus')
d.select('diet', 'Carnivore')
