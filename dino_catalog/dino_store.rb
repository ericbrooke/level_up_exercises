
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

require_relative 'dinosaur'
require_relative 'import'
require_relative 'ui'
require_relative 'search'

class Dinodex
end

d = Dinodex.new('dinodex.csv')
d.print_all
p d.columns
p d.find('Giganotosaurus')
d.select('diet', 'Carnivore')
