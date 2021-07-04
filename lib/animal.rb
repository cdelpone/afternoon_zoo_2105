class Animal

attr_reader :kind

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight
    @age = weight
  end

  def weight
    "#{@weight} pounds"
  end

  def age
    "#{@age} weeks"
  end

  def age_in_days
    @age * 7
  end

  def feed!(lbs)
    @weight += lbs
  end

end
