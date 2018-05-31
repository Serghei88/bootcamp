module Bootcamp
  class BoxPrinter
    attr_accessor :box
    def initialize(box)
      @box = box
    end

    def render
    result = ""
      (0..@box.sizeY - 1).each do |_y|
        (0..@box.sizeX - 1).each do |_x|
          result+= @box.symbol.to_s
        end
        result+="\n"
      end
      return result
    end
    end

  class Box
    attr_reader :symbol, :sizeX, :sizeY

    def initialize(sizeX, sizeY, symbol)
      @symbol = symbol
      @sizeX = sizeX
      @sizeY = sizeY
    end

    def fill(symbol)
      Box.new(@sizeX, @sizeY, symbol)
    end

    def rotate
      Box.new(@sizeY, @sizeX, @symbol)
    end

    def resize(sizeX, sizeY)
      Box.new(sizeX, sizeY, @symbol)
    end

    def expand(n)
      @sizeX *= n
      @sizeY *= n

      self
    end
  end
end
