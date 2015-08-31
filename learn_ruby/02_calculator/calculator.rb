def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    sum = 0
    
    unless array.empty?
        array.each do |x|
            sum += x
        end
    end
    return sum
end

def multiply(*num)
    product = 1

    if num.empty?
        return 0
    else
        num.each do |x|
            product *= x
        end
    end
    return product
end

def power(num1, num2)
    num1 ** num2
end

def factorial(num)
    i = 1
    j = 1
    
    unless num < 1 
        until i > num do
            j *= i
            i += 1
        end
        return j
    end
    return 0
end
