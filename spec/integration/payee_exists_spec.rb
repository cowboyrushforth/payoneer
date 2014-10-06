describe 'payee existence check', :vcr do
  it 'handles non-existent payee' do
    expect {
      payoneer_client.payee_exists?(1)
    }.to raise_error(PayoneerException, 'Payee does not exist')
  end
end
