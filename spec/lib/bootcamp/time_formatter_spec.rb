  describe Bootcamp::TimeFormatter do
    it 'returns the right time format' do
      expect(Bootcamp::TimeFormatter.new(62).format_time).to eq('1 minute and 2 seconds')
      expect(Bootcamp::TimeFormatter.new(120).format_time).to eq('2 minutes')
      expect(Bootcamp::TimeFormatter.new(3600).format_time).to eq('1 hour')
      expect(Bootcamp::TimeFormatter.new(3662).format_time).to eq('1 hour, 1 minute and 2 seconds')
      expect(Bootcamp::TimeFormatter.new(1).format_time).to eq('1 second')
    end
  end

