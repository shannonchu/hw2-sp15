class Person
  def initialize(name, age)
  	@name = name
  	@age = age
  	@nickname = self.nickname
  end

  def introduce
  	return "Hi, my name is " + @name + "! I am " + @age + " years old."
  end

  def birth_year
  	return 2015 - @age.to_i
  end

  def nickname
  	return @name[0,4]
  end
end
