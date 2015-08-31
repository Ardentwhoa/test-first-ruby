def ftoc(num)

    if num.is_a? Float 
        (num - 32.0) * (5.0 / 9.0)
    else
        (num - 32) * (5.0 / 9.0)
    end

end

def ctof(num)

    if num.is_a? Float 
        (num * (9.0 / 5.0)) + 32.0
    else
        (num * (9.0 / 5.0)) + 32
    end

end
