include Bootcamp
describe Bootcamp::Book do
  before :each do
    @file_path = 'text.out'
    @file = "sdfsd ds fsdf sdf \n sdf sdfsdf s  dfg df g d\n df"

    File.stub(:read).and_return(@file)
    allow(File).to receive(:exist?).with(@file_path).and_return(true)
  end

  it 'performs valid operations with book file' do
    book = Book.new
    expect(book.createBook(@file_path)).to eq(true)
    expect(book.getPage(1)).to eq("sdfsd ds\n======= page number 1 ========")
  end
  it 'corectly bookmarks the book' do
    book = Book.new
    book.createBook(@file_path)
    book.bookMarkPage
    book.skipPages(1)
    book.bookMarkPage

    expect(book.getBookmarks).to eq([1, 3])
  end
end
