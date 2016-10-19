######
# Clocks -- Tmux status line output
###

require 'net/http'

class Weather

  attr_reader :temp, :flag, :summary

  def initialize()
    @temp = 68
    @flag = "(!)" if hasflag?
    @summary = "Dang nice"
  end

  private

  def get_weather(lat = 42.9333, lon = -78.877)

  end

  def hasflag?
    return true
  end

end

class Clocks

  def initialize()
    w = Weather.new()
    t = Time.new()
    @tu = t.utc.strftime("[ %H:%M ]")
    @tb = t.getlocal("-04:00").strftime("<][ %b %d %H:%M | ")
    @tw = "#{w::flag} #{w::temp} ][>"
    @tc = t.getlocal("-07:00").strftime("<][ %H:%M ]")
    @ti = t.getlocal("+05:30").strftime("[ %H:%M ][>")
  end

  def show()
    puts "#{@tc} #{@tb}#{@tw} #{@tu} #{@ti}"
  end
end

c = Clocks.new()
c.show()
