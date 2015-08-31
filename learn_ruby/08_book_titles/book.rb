class Book

    attr_accessor :title

    def initialize
        @title = String.new
    end

    def title= title
        @title = title.scan(/\w+/)
        @title[0].capitalize!
        @title.each do |word|
            unless word =~ /\ba\b|\band\b|\bin\b|\bthe\b|\bof\b|\ban\b/
                word.capitalize!
            end
        end

        @title = @title.join(" ")
    end
end
