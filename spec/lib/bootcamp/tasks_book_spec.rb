include Bootcamp
describe Bootcamp::TasksBook do
  before :each do
    @file_path = 'text.out'
    @file = ['task1', 'task 2', 'task 3']

    File.stub(:readlines).and_return(@file)
    allow(File).to receive(:exist?).with(@file_path).and_return(true)
  end
  it 'tasks book returns the values properly' do
    tasks_book = TasksBook.new
    expect(tasks_book.createBook(@file_path)).to eq(true)
    expect(tasks_book.getTasks).to eq(@file)
  end
  it 'tasks book add operation work' do
    tasks_book = TasksBook.new
    tasks_book.createBook(@file_path)
    new_task = 'test n'

    tasks_book.addTask(new_task)
    expect(tasks_book.getTasks).to eq(@file.push(new_task))
  end
end
