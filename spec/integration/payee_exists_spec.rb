describe 'payee existence check', :vcr do
  subject do
    Payoneer.new(ENV['PAYONEER_PARTNER_ID'],
                 ENV['PAYONEER_USERNAME'],
                 ENV['PAYONEER_PASSWORD'])
  end

  it 'handles non-existent payee' do
    expect {
      subject.payee_exists?(1)
    }.to raise_error(PayoneerException, 'Payee does not exist')
  end
end
