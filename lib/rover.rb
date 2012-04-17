class Rover 
  
  attr_reader :location

  def initialize
    @heading = Heading.new
    @location = [0,0]
  end

  def heading
    @heading.heading
  end
  
  def left
    @heading.left
  end

  def right
    @heading.right
  end

  def move
    case heading
    when "N"
      @location[1] += 1  
    when "E"
      @location[0] += 1 
    when "S"
      @location[1] -= 1
    when "W"
      @location[0] -= 1 
    end
  end


end

class Heading
  def initialize
    @headings = ["N","E","S","W"]
  end

  def heading
    @headings[0]
  end

  def left
    @headings.unshift @headings.pop
  end

  def right
    @headings.push @headings.shift
  end
end
