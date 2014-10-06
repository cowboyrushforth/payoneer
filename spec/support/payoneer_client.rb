module PayoneerClient
  def payoneer_client
    @payoneer_client ||= Payoneer.new(ENV['PAYONEER_PARTNER_ID'],
                                      ENV['PAYONEER_USERNAME'],
                                      ENV['PAYONEER_PASSWORD'])
  end
end
