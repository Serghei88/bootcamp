include Bootcamp
describe Bootcamp::Box do
  it 'returns the right box' do
    box = Box.new(3, 5, '$')
    expect(BoxPrinter.new(box).render).to eq("$$$\n$$$\n$$$\n$$$\n$$$\n")
    expect(BoxPrinter.new(box.rotate).render).to eq("$$$$$\n$$$$$\n$$$$$\n")
    expect(BoxPrinter.new(box.expand(3)).render).to eq("$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n$$$$$$$$$\n")
    expect(BoxPrinter.new(box.fill('#')).render.to_s).to eq("#########\n#########\n#########\n#########\n#########\n#########\n#########\n#########\n#########\n#########\n#########\n#########\n#########\n#########\n#########\n")
  end
end
