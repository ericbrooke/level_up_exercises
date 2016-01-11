
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
require "awesome_print"
# dinosaurs = CSV.read('dinodex.csv', headers: true, header_converters: :symbol)
# # CSV.foreach('dinodex.csv', headers:true) do |dinosaur|
# #   puts dinosaur.inspect
# # end
# dinosaurs.each do |dinosaur|
#   p dinosaur
# end
# CSV::Converters[:blank_to_nil] = lambda do |field|
#   field && field.empty? ? nil : field
# end
#
f = 'dinodex.csv'
# d = CSV.new(f, headers: true, header_converters: :symbol, converters: [:all, :blank_to_nil])
# d.to_a
# puts d

# csv_data = CSV.read f
# headers = csv_data.shift.map {|i| i.to_s }
# string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
# array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }
#
# puts array_of_hashes


def csv_to_array(file_location)
    csv = CSV.parse(File.open(file_location, 'r') { |f| f.read })
    fields = csv.shift
    fields = fields.map {|f| f.downcase.gsub(" ", "_")}
    csv.collect { |record| Hash[*fields.zip(record).flatten] }
end

test = csv_to_array('dinodex.csv')
puts test
