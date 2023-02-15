require "date"

def dayofyear(date)
    dd = date.split("-")[2].to_i
    mm = date.split("-")[1].to_i
    yy = date.split("-")[0].to_i
    d = Date.new(yy,mm,dd)
    day = d.yday
    p "#### #{d.to_s} ####"
    p "#### #{day}/365 day of the year ####"
    p "#### #{day*100/365}% - year progress ####"
end

dayofyear(ARGV[0] || Date.today.to_s)