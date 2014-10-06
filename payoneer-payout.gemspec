Gem::Specification.new do |s|
  s.name        = 'payoneer-payout'
  s.version     = '0.0.1.3'
  s.date        = '2013-05-30'
  s.summary     = "Ruby wrapper for Payoneer API"
  s.description = "Allows to transfer funds between redpass users"
  s.authors     = ["Stanislav Mekhonoshin"]
  s.email       = 'ejabberd@gmail.com'
  s.files       = ['lib/payoneer.rb', 'lib/payoneer/exception.rb']
  s.homepage    = 'https://github.com/Mehonoshin/payoneer'

  s.add_development_dependency 'pry'
end
