module Bootcamp
  class Point
    attr_accessor :id, :name, :ways
    def initialize(id, name, ways)
      @id = id
      @name = name
      @ways = ways
    end
    end

  class Parser
    attr_accessor :results
    def initialize(allowed_words, graph)
      @results = []
      @graph = graph
      @allowed_words = allowed_words
    end

    def parse_graph
      @allowed_words.each do |word|
        search_word_in_graph(word, @graph)
      end
    end

    def going_to_the_deep(curent_point, word, graph)
      return true if word.empty?
      curent_point.ways.each do |way|
        new_point = graph.find { |point| point.id == way && point.name == word[0] }
        unless new_point.nil?
          graph.delete(new_point)
          return going_to_the_deep(new_point, word[1..-1], graph)
        end
      end
      false
    end

    def search_word_in_graph(word, graph)
      result = false
      posible_starting_points = graph.select { |point| point.name == word[0] }
      posible_starting_points.each do |point|
        tempgraph = graph.clone
        tempgraph.delete(point)
        result = going_to_the_deep(point, word[1..-1], tempgraph)
        @results.push(word) if result
      end
      result
    end
  end
end
