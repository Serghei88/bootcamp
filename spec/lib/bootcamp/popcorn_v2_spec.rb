include Bootcamp
describe Bootcamp::Parser do
  it 'solves the popcorn test in the right way' do
    chain = [Point.new(1, 'p', [2, 3, 4]),
             Point.new(2, 'o', [1, 3, 5, 6]),
             Point.new(3, 'r', [1, 2, 4, 6]),
             Point.new(4, 'n', [1, 3, 6, 7]),
             Point.new(5, 'p', [2, 6, 8]),
             Point.new(6, 'o', [2, 3, 4, 5, 7, 8]),
             Point.new(7, 'c', [4, 6, 8]),
             Point.new(8, 'c', [5, 6, 7])]

    allowedWords = %w[pop corn cop cat dog crop popcorn]
    parser = Parser.new(allowedWords, chain)
    parser.parse_graph
    expect(parser.results.sort).to eq(["pop", "popcorn", "pop", "corn", "cop", "corn", "cop"].sort)
  end
end