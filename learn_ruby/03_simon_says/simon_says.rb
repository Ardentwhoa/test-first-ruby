def echo(to_echo)
    to_echo
end

def shout(*to_shout)
    to_shout.each { |x| return x.to_s.upcase! }    
end

def repeat(to_repeat, count=2)
    array = Array.new

    count.times do
        array << to_repeat
    end

    array.join(" ")
end

def start_of_word(word, count)
    unless count < 1 
        return word[0, count]
    end

    word[count]
end

def first_word(words)
    return words.scan(/\w+/)[0]
end

def titleize(words)
    array = words.scan(/\w+/)
    array[0].to_s.capitalize!

    if array.length < 3
        array.each do |x|
            x.to_s.capitalize!
        end
    else
        array[-1].to_s.capitalize!
    
        array.each do |x|
            unless x.length < 5 
                x.to_s.capitalize!
            end
        end
    end
    return array.join(" ")
end
