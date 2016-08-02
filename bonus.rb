module HelperMethods
  def self.titleize(x)
    c = [];
    ignore = ["in","the","of","and","or","from"]
    x.split(" ").each {|i|
      if ignore.include? i
        c << i
      else
        c << i.capitalize
      end
    }
    c_final = c.join(" ")
  end
end

str = "hello people of the world"

p HelperMethods.titleize(str)
