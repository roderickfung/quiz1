#The difference between a stack and a queue.
#Stack operates via pop/push method, whereas queue works similar to shift/push.

#===Example of a Stack
def alpha()
  beta()
  p a = 1
end

def beta()
  charlie()
  p b = 2
end

def charlie()
  p c = 3
end

alpha()

#===Example of a Queue

def queue(a)
  p "Before: #{a}"
  a.push(6)
  a.shift(1)
  p "After: #{a}"
end

queue([0,1,2,3,4,5])

#===================
