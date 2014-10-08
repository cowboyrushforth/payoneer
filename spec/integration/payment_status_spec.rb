describe 'Payoneer#payment_status', :vcr do
  it "returns a payment's status" do
    status = payoneer_client.payment_status(internal_payment_id: 1,
                                            internal_payee_id: 16028)
    expect(status.description).to eq('OK (Request accepted)')
  end
end
