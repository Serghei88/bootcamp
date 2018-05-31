include Bootcamp
describe 'find longest common sequence of 2 strings' do
  it 'returns the longest common sequence' do
    expect(longest_common_seq('123', 'asd')).to eq('')
    expect(longest_common_seq('asdasd', '1asde')).to eq('asd')
    expect(longest_common_seq('fghfghasdqwertyasd', 'asdqwerty')).to eq('asdqwerty')
    expect(longest_common_seq('fghfghasd1234567qwertyasd', 'asd1234567qwerty')).to eq('asd1234567qwerty')
  end
end
