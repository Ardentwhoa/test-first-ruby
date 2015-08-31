class Timer
    attr_accessor :seconds

    def initialize (seconds = 0)
        @seconds = seconds
        @time_string = "00:00:00"
    end

    def padded(num = seconds)
        if num < 10
           return "0" + num.to_s
        end

        return num.to_s
    end

    def time_string
       if seconds < 10
            time_string = "00:00:" + padded(seconds)
       elsif seconds >= 10 and seconds < 60
            time_string = "00:00:" + seconds.to_s          
       elsif seconds >= 60 and seconds < 3600
           time_string = "00:" + padded(seconds / 60) + ":" + padded(seconds % 60)   
       elsif seconds >= 3600
           time_string = padded((seconds / 60) / 60) + ":" + padded((seconds / 60) % 60) + ":" + padded(seconds % 60)
       end
    end

end
