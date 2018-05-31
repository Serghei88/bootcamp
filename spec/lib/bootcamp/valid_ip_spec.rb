include Bootcamp
describe 'valid_ip?' do
  it 'true only for valid ip addresses' do
    expect(valid_ip?('123.456.78.90')).to eq(false)
    expect(valid_ip?('1.2.3')).to eq(false)
    expect(valid_ip?('1.2.3.4.5')).to eq(false)
    expect(valid_ip?('1.2.3.4')).to eq(true)
    expect(valid_ip?('123.045.067.089')).to eq(false)
  end
end
