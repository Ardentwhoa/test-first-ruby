def translate(str_in)
    to_trans = Array.new
    to_trans = str_in.scan(/\w+/)
    
    to_trans.each do |x|
        q = /qu/ =~ x
        i = /[aeiou]/ =~ x
        if i == 0
            x.replace(x.to_s + "ay")
        elsif q.is_a? Integer
            temp = x.slice!(0..(q + 1))
            x.replace(x.to_s + temp.to_s + "ay") 
        else    
            temp = x.slice!(0..(i - 1))
            x.replace(x.to_s + temp.to_s + "ay")
        end
    end

    unless to_trans.length < 2
        return to_trans.join(" ")
    end

    return to_trans[0].to_s
end
