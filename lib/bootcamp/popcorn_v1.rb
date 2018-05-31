
module Bootcamp
  class Point
    attr_accessor :id, :name, :ways
    def initialize(id, name, ways)
      @id = id
      @name = name
      @ways = ways
    end
  end

  class Solver
    attr_accessor :allowedWords, :chain, :results
    def initialize(allowedWords, chain)
      @results = []
      @chain = chain
      @allowedWords = allowedWords
    end

    def recursive_search(p, tempResult, tempChain)
      @results.push(tempResult) if @allowedWords.include?(tempResult)
      tempChain.delete_if { |obj| obj.id == p.id }
      p.ways.each do |way|
        newPoint = tempChain.find { |item| item.id == way }
        if newPoint
          recursive_search(newPoint, (tempResult + newPoint.name), tempChain.clone)
        end
      end
      end

    def search
      @chain.each do |point|
        recursive_search(point, point.name, @chain.clone)
      end
      @results
    end
  end
end
