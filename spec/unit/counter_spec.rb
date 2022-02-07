require 'counter'

describe Counter do
  describe '#new' do
    it 'starts with a count of 0' do
      counter = Counter.new
      expect(counter.count).to eq 0
    end
  end

  describe '#increment' do
    it 'adds 1 to the count' do
      counter = Counter.new
      counter.increment
      expect(counter.count).to eq 1
    end
  end

  describe '#decrement' do
    it 'subtracts 1 from the count' do
      counter = Counter.new
      counter.decrement
      expect(counter.count).to eq -1
    end
  end

  describe '#reset' do
    it 'resets the counter' do
      counter = Counter.new
      counter.decrement
      expect(counter.count).to eq -1
      expect(counter.reset).to eq 0
    end
  end

  describe '#last_updated' do
    it 'prints time of last update' do
      counter = Counter.new
      counter.decrement
      expect(counter.last_updated).to eq Time.now.strftime("%H:%M")
    end
  end
end
