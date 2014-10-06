describe 'Get payee signup link', :vcr do
  it 'returns a link' do
    expect(payoneer_client.payee_link('fox')).to eq('http://payouts.sandbox.payoneer.com/partners/lp.aspx?token=1c447510fdc847d6a7ce706448cb10fe4DCE620A5A')
  end
end
