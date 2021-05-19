class Animal

attr_reader :kind, :weight, :age

  def initialize(kind, weight, age)
    @kind = kind
    @weight = "#{weight} pounds"
    @age = "#{age} weeks"
  end

  def age_in_days
    (@age.to_f * 7)
  end

  def feed!(num)
    feed = []
    (:weight_i << num)
  end

end
