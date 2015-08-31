def reverser
    yield.reverse
end

reverser { |to_reverse| to_reverse.to_s.scan(/\w+/) } 
