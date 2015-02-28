class Foobar
  def self.baz(arr)
  	return arr.map(&:to_f).map{ |a| a+2 }.select{ |a| a%2 == 0 }.uniq.select{ |a| a < 10 }.sum
  end
end
