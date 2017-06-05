def add (num1, num2)
  num1 + num2
end

def subtract (num1, num2)
  num1 - num2
end

def sum num
  result = 0
  num.each do |element|
    result += element
  end
  result
end

def multiply num
  result = 1
  num.each do |element|
    result = result * element
  end
  result
end

def power (num1, num2)
  result = 1
  num2.times do
    result = result * num1
  end
  result
end


def factorial num
  if num <= 1
    1
  else
    num * (factorial (num -1))
  end
end
