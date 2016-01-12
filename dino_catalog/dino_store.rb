
# dinodex
# name, period, continent, diet, weight_in_lbs, walking, description

# african_dinosaur_export
# genus, period, carnivore, weight, walking

# load file
# parse csv
# see database contents
# search by walking, diet, periods, small or big, or combine
# look at each dinosaur
# show reults from search/filter
# search by parameters
# export json

# table_print

require 'csv'
require 'table_print'

# def convert_csv_array_of_hashes(file_location)
#   csv = CSV.read(file_location, headers: true, header_converters: :symbol, :converters => [:all])
#   arrayed = csv.to_a
#   array_and_hashed = arrayed.map{|row| row.to_h}
# end

def csv_to_array(file_location)
  csv = CSV.parse(File.open(file_location, 'r') { |f| f.read })
  titles = csv.shift # get the titles
  titles = titles.map { |f| f.downcase.to_sym}
  csv.collect { |record| Hash[*titles.zip(record).flatten(1)] } # add title to each field
end

def find(store, keyword)
  store.find { |x| x.fetch(:name) == keyword }
end

def select(store, category, keyword)
  store.find_all { |x| x.fetch(category.to_sym) == keyword }
end

def print_all(store)
  tp store
end

def sort(store, category, keyword)
  # %w{apple pear fig}.sort_by { |word| word.length}
  store.sort_by { |category.to_sym| }
end

store = csv_to_array('dinodex.csv')
print_all(store)
result = find(store, 'Giganotosaurus')
results = select(store, 'diet', 'Carnivore')
print_all(results)
