describe 'Payoneer#payee_exists?', :vcr do
  it 'returns true if payee exists' do
    payee = payoneer_client.payee_exists?('fox')
    expect(payee).to eq(true)
  end

  it 'raises an error if payee does not exist' do
    expect {
      payoneer_client.payee_exists?('rabbit')
    }.to raise_error(PayoneerException, 'Payee does not exist')
  end
end
