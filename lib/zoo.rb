class Zoo
  attr_reader :name, :street, :city, :state, :zip_code, :inventory

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @inventory = []
  end

  def address
    "#{street} #{city}, #{state} #{zip_code}"
  end

  def animal_count
    @inventory.length
  end

  def add_animal(animal)
    @inventory.push(animal)
  end

  def animals_older_than(age)
    older = []
    @inventory.each do |animal|
      if (animal.age_in_days / 7) >= age
        older << animal
      end
    end
    older
  end

  def total_weight_of_animals
    weight = 0
    @inventory.each do |animal|
      weight += animal.weight.split(" ").first.to_i
      # weight += animal.weight.to_i -> same thing but not as explicit
  end
    weight
  end

  def details
    {
      "total_weight" => total_weight_of_animals,
      "street_address" => street
    }
  end

  def animals_sorted_by_weight
    @inventory.sort_by do |animal|
      -(animal.weight.split.first.to_i)
    end
  end

  # can also do
  # def animals_sorted_by_weight
  #   @inventory.sort_by do |animal|
        # animal.weight.split.first.to_i
  #   end.reverse
  # end

  def animal_hash
    hash = Hash.new

    @inventory.each do |animal|
      first_letter = animal.kind[0]
      if hash[first_letter]
      hash[first_letter] << animal
    else
      hash[first_letter] = [animal]
    end
    hash
  end

end
