def time_code()
    time = Time.now

    y = time.year
    mon = time.month
    d = time.day
    week = ["日", "月", "火", "水", "木", "金", "土"]
    w = time.wday
    h = time.hour
    min = time.min
    s = time.sec
    
    y_s = time.year.to_s
    mon_s = time.month.to_s
    d_s = time.day.to_s
    h_s = time.hour.to_s
    min_s = time.min.to_s
    s_s = time.sec.to_s

    if mon < 10
        mon_s = "0" << mon_s
    end

    if d < 10
        d_s = "0" << d_s
    end

    if h < 10
        h_s = "0" << h_s
    end

    if min < 10
        min_s = "0" << min_s
    end

    if s < 10
        s_s = "0" << s_s
    end

    timecode = "[" + y_s + "/" + mon_s + "/" + d_s + " " + h_s + "時" + min_s + "分" + s_s + "秒]"
    return timecode 
end

def time_code_s()
    time = Time.now

    y = time.year
    mon = time.month
    d = time.day
    w = time.wday
    h = time.hour
    min = time.min
    s = time.sec
    
    y_s = time.year.to_s
    mon_s = time.month.to_s
    d_s = time.day.to_s
    h_s = time.hour.to_s
    min_s = time.min.to_s
    s_s = time.sec.to_s

    if mon < 10
        mon_s = "0" << mon_s
    end

    if d < 10
        d_s = "0" << d_s
    end

    if h < 10
        h_s = "0" << h_s
    end

    if min < 10
        min_s = "0" << min_s
    end

    if s < 10
        s_s = "0" << s_s
    end

    timecode =  y_s  + mon_s + d_s  + h_s  + min_s + s_s 
    return timecode 
end

def time_h()
    time = Time.now
    h = time.hour
    return h
end

def time_m()
    time = Time.now
    m = time.min
    return m
end
