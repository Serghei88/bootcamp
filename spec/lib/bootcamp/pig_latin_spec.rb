include Bootcamp
describe 'pig_latin' do
  it 'returns the pig latin variant of sctring' do
    expect(pig_latin('The quick brown fox')).to eq('Hetay uickqay rownbay oxfay ')
  end
end