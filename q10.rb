# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.


# Includes requires you to call the method within the class, it's an instance method. where as extend the method becomes apart of the class, so you can just call it straight without using it. It's a class method.
#


module Alpha
  def alpha
    puts "Called This!"
  end
end

class Beta
  include Alpha
end

class Zulu
  extend Alpha
end

# p Beta.alpha
Beta.new.alpha
Zulu.alpha
# p Zulu.new.alpha
