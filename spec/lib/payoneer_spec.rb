describe Payoneer do
  subject { Payoneer.new('x', 'y', 'z') }

  describe '#transfer_funds_args' do
    let(:time) { Time.new(2014, 10, 7, 16, 50, 10) }
    it 'uses the current time for the payment timestamp param if none is given' do
      expect(Time).to receive(:now).and_return(time)
      expect(subject.send(:transfer_funds_args, {}))
        .to include('p9' => '10/07/2014 16:50:10')
    end

    it 'uses the timestamp from the options hash if present' do
      expect(subject.send(:transfer_funds_args, { date: time }))
        .to include('p9' => '10/07/2014 16:50:10')
    end
  end
end
