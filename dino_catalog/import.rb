class Import
  CONVERT_AFRICAN_TABLE = {
    'Genus' => 'Name',
    'Carnivore' => 'Diet',
    'Weight' => 'Weight_in_lbs',
  }

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
end
